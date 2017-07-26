"""Classes and functions required for smali codeblock insertion."""

import re


ARG_TYPE = {'L': 'object', 'Z': 'data32', 'B': 'data32',
            'S': 'data32', 'C': 'data32', 'I': 'data32',
            'J': 'data64', 'F': 'data32', 'D': 'data64',
            'U': 'undefined', '[': 'object'}

# instruction arg1,arg2
# ex: move-object vx,vy
# need to know these types of arguments for parsing
INSTRUCTION_ARGS = {}
with open('smali_tool/instruction.txt', 'r') as f:
    for line in f:
        words = line.strip().split(' ')
        if len(words) > 1:
            INSTRUCTION_ARGS[words[0]] = words[1].split(',')
        else:
            INSTRUCTION_ARGS[words[0]] = []

INSTRUNCTION_REGTYPES = {}
with open('smali_tool/instruction_regtype.txt', 'r') as f:
    for line in f:
        words = line.strip().split(' ')
        if len(words) > 1:
            INSTRUNCTION_REGTYPES[words[0]] = words[1].split(',')
        else:
            INSTRUNCTION_REGTYPES[words[0]] = []


class MethodBlock:
    r"""Smali method block code handling class.

    Example:
        from smali_tool import MethodBlock
        original_code = ".method public aFunc(I;)V\n ... \n .end-method\n"
        a = MethodBlock(original_code)

        codes_to_be_inserted = ["do something nasty\n ...", ...]
        codes_to_be_appended = ["this part is usually switch-goto-labels\n ...", ...]
        register_required = 5
        line_nums_code_insert = [138, ...]

        a.insert(register_required,
            codes_to_be_inserted,
            codes_to_be_appended,
            line_nums_code_insert)

        result = '\n'.join(a.code)
        # result = ".method pub...\n INSERTED\n ... APPENDED\n .end-method"

    Attribute:
        Always bring instruction.txt and instruction_regtype.txt

    Todo:
        * A better smali parser is strongly needed
        * Repeating insert() -> .locals will be increasing again and again...
        * System message
        * k < p - there should be parameter space corruption
        * goto and goto/16 issue
        * code cleanup using regex
    """

    def __init__(self, code):
        """Initialize an object.

        The first parameter, "code" should be one big
        string code block of one method
        """
        self.new_lines = []
        self.code = code.splitlines()

        # get labels: line_num
        self.label = {}
        flag_switch = False
        for i in xrange(len(self.code)):
            temp = self.code[i].strip()
            if temp == '':
                continue
            if flag_switch:
                if get_instruction(temp) == '.end':
                    flag_switch = False
                continue
            if get_instruction(temp) == '.packed-switch' or \
                    get_instruction(temp) == '.sparse_switch':
                flag_switch = True
                continue
            if temp[0] == ':':  # label starts with ':'
                self.label[temp] = i

        # get nlocal
        # we cannot get local types now: they may change
        self.nlocal = 0
        for line in self.code:
            words = line.strip().split(' ')
            if len(words) == 0:
                continue
            if words[0] == '.locals':
                self.nlocal = int(words[1])
                break

        # get nparam and param types
        self.nparam = 1
        self.param_type = ['object']
        for line in self.code:
            # .method public someFunction(I;LsomeClassType;Z;)
            words = line.strip().split(' ')
            if len(words) == 0:
                continue
            if words[0] == '.method':
                l, r = words[-1].split('(')   # ILsomeClassType;Z)
                l, r = r.split(')')           # ILsomeClassType;Z
                args_words = get_arg_type(l)
                self.nparam += len(args_words)
                for word in args_words:
                    self.param_type.append(ARG_TYPE[word[0]])
                    if ARG_TYPE[word[0]] == 'data64':
                        self.param_type.append(ARG_TYPE['U'])
                        self.nparam += 1
                if ' static ' in line:
                    self.nparam -= 1
                    self.param_type = self.param_type[1:]

        # see if this code is previously perturbed by code inserting
        # nothing is implemented for this previously perturbed things yet
        self.is_perturbed = False
        for line in self.code:
            if line.strip() == '':
                continue
            words = line.strip().split()
            if words[0] == '#smali_insert':
                self.is_perturbed = True
                self.previous_k = int(words[1])

    def get_local_types(self, line_num):
        """Get local register types at "line_num".

        Simply do DFS over code, assuming that conditional gotos and switchs
        are the edges (branchs) of a directed graph. We are able to infer the
        types of local registers using const, move-result, move-result-object,
        etc.

        At the time we arrive at "line_num", we HOPE that a list we have is
        correct. Logically, we are not sure that the lists at "line_num" of
        all the different branchs are the same. We HOPE that all the stupid
        register-level error is filtered by compiler already.

        Sometimes it is difficult to get the type of a register.
        1. const/4 vx, 0x0
            For this case, 0x0 can be both null/int0. If there is a debugging
            message near this instruction (like a .local statement), it is ok.
            If not, it needs to find out in what context this register is used.
            To do so, this method will try tracking this register along the
            whole code, until it finds the context. Otherwise, it will generate
            an error. (None type error, because it will return None instead of
            the result) Basically this feature could be unstable.
        """
        result = ['undefined'] * self.nlocal + self.param_type
        result_keep = ['null'] * len(result)
        visit = [False] * len(self.code)
        nulls = set([])
        result = self.get_local_types_helper(0, result, result_keep, nulls, {},
                                             False, visit, line_num)

        if result is None:
            for i in xrange(len(result_keep)):
                if result_keep[i] == 'null':
                    result_keep[i] = 'object'
            print '******* undefined null found'
            return result_keep
        return result

    def get_local_types_helper(self, now, result, result_keep, nulls, knowns,
                               null_flag, visit, k):
        """A helper method for DFS for get_local_types."""
        # now: current line number
        # result: register types
        # visit: visited of not?
        # k: target line number
        return_flag = False

        while True:
            to_be_deleted = set([])
            for reg in nulls:
                reg_num = int(reg[1:])
                if result[reg_num] != 'null':
                    knowns[reg_num] = result[reg_num]
                    to_be_deleted.add(reg)
            for reg in to_be_deleted:
                nulls.remove(reg)

            if now == k + 1 and (not null_flag):
                if len(nulls) == 0:
                    for reg_num in knowns:
                        if result[reg_num] != 'null':
                            continue
                        result[reg_num] = knowns[reg_num]
                    return result
                else:
                    for i in xrange(len(result)):
                        result_keep[i] = result[i]
                    null_flag = True

            if null_flag:
                if len(nulls) == 0:
                    for reg_num in knowns:
                        if result_keep[reg_num] != 'null':
                            continue
                        result_keep[reg_num] = knowns[reg_num]
                    return result_keep

            instruction = get_instruction(self.code[now]).strip()
            if visit[now] or \
                    (instruction == '.end' and
                     self.code[now].strip().split()[-1] == 'method'):
                return None
            else:
                visit[now] = True

            # Instructions args...
            # switchs for instructions
            if instruction == '':
                pass

            elif instruction.startswith('goto'):
                l, r = self.code[now].strip().split(' ', 1)
                label = r.strip()
                now = self.label[label]
                continue

            elif instruction == 'packed-switch' or \
                    instruction == 'sparse_switch':
                l, r = self.code[now].strip().split(':', 1)
                label = ':' + r.strip()
                now = self.label[label]
                continue

            elif instruction == '.packed-switch' or \
                    instruction == '.sparse_switch':
                while True:
                    now += 1
                    visit[now] = True
                    words = self.code[now].strip().split()
                    if words[0] == '.end':
                        break
                    temp = self.get_local_types_helper(self.label[words[-1]],
                                                       result[:], result_keep,
                                                       nulls, knowns,
                                                       null_flag, visit, k)
                    if temp is not None:
                        return temp
                return None

            elif instruction.startswith('if') or instruction == '.catch':
                words = self.code[now].strip().split(',')
                target = words[-1].strip()
                words = target.split(' ')
                target = words[-1].strip()
                temp = self.get_local_types_helper(now + 1,
                                                   result[:], result_keep,
                                                   nulls, knowns, null_flag,
                                                   visit, k)
                if temp is not None:
                    return temp
                temp = self.get_local_types_helper(self.label[target],
                                                   result[:], result_keep,
                                                   nulls, knowns, null_flag,
                                                   visit, k)
                if temp is not None:
                    return temp
                else:
                    return None

            else:
                if instruction[0] != ':' and instruction[0] != '.' \
                        and instruction in INSTRUCTION_ARGS:
                    regs = get_register_names(
                        self.code[now],
                        INSTRUCTION_ARGS[instruction])
                    types = INSTRUNCTION_REGTYPES[instruction]

                    # to handle the situation like below:
                    # aget v15, v15, v6
                    #for i in xrange(len(types)):
                    for i in xrange(len(types)-1, -1, -1):
                        if types[i] == 'passes':
                            if 'invoke' in instruction:
                                l, r = self.code[now].split('(', 1)
                                l, r = r.split(')', 1)
                                arg_types = get_arg_type(l)
                                update_regtype_array(result, regs, arg_types)
                        elif types[i] == 'pass':
                            if 'invoke' in instruction and \
                                    'range' in instruction:
                                l, r = self.code[now].split('(', 1)
                                l, r = r.split(')', 1)
                                arg_types = get_arg_type(l)
                                i_start = int(regs[0][1:])
                                i_end = int(regs[1][1:]) + 1
                                regs = ['v' + str(x) for x in xrange(i_start,
                                                                     i_end)]
                                update_regtype_array(result, regs, arg_types)
                                break
                        else:
                            reg_num = int(regs[i][1:])
                            result[reg_num] = types[i]
                            if types[i] == 'data64':
                                result[reg_num + 1] = 'undefined'

                    # handling weird cases
                    #
                    # 1.
                    # a = null;
                    # const/4 v6, 0x0
                    # this can be interpreted to both data32 and object
                    # maybe this section can be deleted now?
                    if ('const/' in instruction or 'const' == instruction) and\
                            self.code[now].strip().split()[-1] == '0x0':
                        #print "[*] line {0}, null object/int 0 found: {1}"\
                        #    .format(now, self.code[now])
                        for i in xrange(-5, 6):  # 5 is arbitrary small number
                            res = get_dot_local_type(self.code, now + i,
                                                     regs[0])
                            if res is not None:
                                reg_num = int(regs[0][1:])
                                result[reg_num] = res
                                "[*] line {0}, found .local statement: {1}"\
                                    .format(now, res)
                            else:
                                nulls.add(regs[0])
                                reg_num = int(regs[0][1:])
                                result[reg_num] = 'null'

            if instruction.startswith('return'):
                if return_flag:
                    return None
                else:
                    return_flag = True
                    continue
            now += 1

    def modify_locals(self, k):
        """For new .nlocals = self.nlocal + k."""
        # NOTE I am not sure that I can overwrite the parameter. This can
        # happen in this code when k < p
        for i in xrange(len(self.code)):
            line = self.code[i]
            if get_instruction(line).strip() == '.locals':
                #print "[*] line {0}, from, {1}".format(i, line)
                line = ".locals {0}".format(self.nlocal + k)
                #print "[*] line {0}, to, {1}".format(i, line)
                self.code[i] = line
                break

    def shift_parameter(self, k):
        """Shift parameters to the original positions."""
        lines = []
        for i in xrange(self.nparam):
            i_source = i + self.nlocal + k
            i_dest = i + self.nlocal

            line = make_move_instruction(i_source, i_dest, self.param_type[i])
            lines.append(line)

        i = 0
        # while (get_instruction(self.code[i]) != '.prologue'):
        while (get_instruction(self.code[i]) != '.locals'):
            i += 1

        #print "[*] line {0}, {1} lines are added for shifting parameters".format(i, len(lines))
        return lines, i

    def modify_p_name(self):
        """Modify all p0, p1, ... to v{self.nlocal}, v{self.nlocal + 1}, ..."""
        for i in xrange(len(self.code)):
            temp = self.code[i].strip()
            if temp == '':
                continue
            if temp[0] != '.' and temp[0] != ':' and temp[0] != '#':
                instruction = get_instruction(temp)
                if instruction not in INSTRUCTION_ARGS:
                    continue
                args = INSTRUCTION_ARGS[instruction]
                reg_names = get_register_names(self.code[i].strip(), args)
                for reg in reg_names:
                    if reg[0] == 'p':
                        pindex = int(reg[1:])
                        vindex = pindex + self.nlocal
                        #print "[*] line {0}, from, {1}".format(i, self.code[i])
                        self.code[i] = self.code[
                            i].replace(reg, 'v%d' % (vindex), 1)
                        #print "[*] line {0}, to, {1}".format(i, self.code[i])


    def shift_registers_first(self, k, register_type, line_num):
        """At the insertion point, move all registers to the end."""
        lines = []

        for i in xrange(self.nlocal + self.nparam - 1, -1, -1):
            i_dest = i + k
            line = make_move_instruction(i, i_dest, register_type[i])
            lines.append(line)
        #print "[*] line {0}, {1} lines are added for shifting registers >>>"\
        #    .format(line_num, len(lines))
        return lines


    def shift_registers_last(self, k, register_type, line_num):
        """After the insertion point, move all registers to original pos."""
        lines = []

        for i in xrange(self.nlocal + self.nparam):
            i_source = i + k
            line = make_move_instruction(i_source, i, register_type[i])
            lines.append(line)
        #print "[*] line {0}, {1} lines are added for shifting registers <<<"\
        #    .format(line_num, len(lines))
        return lines


    def insert_safe(self, k, codeblocks, datablocks, line_nums):
        """Internal function for inserting registers safely.
        
        Will only work when nlocals + nparams + k <= 16
        """

        if self.nlocal + self.nparam + k > 16:
            return None

        self.modify_locals(k)
        # get register range
        reg_range = range(k, k + self.nlocal)

        # replace registers in codeblock
        for i in xrange(len(self.code)):
            self.code[i] = replace_reg_num(self.code[i], reg_range)

        for i in xrange(len(line_nums)):
            line_num = line_nums[i]
            codeblock = codeblocks[i]
            datablock = datablocks[i]

            # insert codeblock at line_num
            temp_codeblock, temp_datablock = \
                randomize_label(codeblock, datablock, line_num)
            self.new_lines.append([line_num, [codeblock]])

            # append datablock after return
            for i in xrange(len(self.code) - 1, -1, -1):
                line = self.code[i]
                instruction = get_instruction(line)
                if 'return' in instruction:
                    break

            if datablock != '':
                #print "[*] line {0}, append datablocks after return".format(i)
                temp_codeblock, temp_datablock = \
                    randomize_label(codeblock, datablock, line_num)
                self.new_lines.append([i, [temp_datablock]])

        # update results
        self.merge()
        temp = "\n".join(self.code)
        self.code = temp.splitlines()

        return True


    def insert(self, k, codeblocks, datablocks, line_nums,
               try_catch_flag=False):
        """Insert "codeblocks" which uses "k" registers, at "line_nums".

        Also insert datablocks (like packed-switch ref blocks) at the end of the
        original code, after a return statement and before a end-method
        statement.

        Attribute:
            try_catch_flag=False, if set True, ignore inserting codeblock if
            line at line_num is enclosed by try-catch statements. If registers
            are able to be inserted safely, this function will ignore this flag
            and insert the code block
        """

        # try safe insertion first
        result = self.insert_safe(k, codeblocks, datablocks, line_nums)
        if result is not None:
            #print '[*] codeblocks are inserted safely'
            return

        # new .nlocals = self.nlocal + k
        self.modify_locals(k)

        # shift parameters to the original positions
        lines, i = self.shift_parameter(k)
        self.new_lines.append([i, lines])

        # modify all p0, p1, ... to v{self.nlocal}, v{self.nlocal + 1}, ...
        self.modify_p_name()

        # remove try-catch enclosed block if try_catch_flag
        line_nums_will_be_removed = []
        for line_num in line_nums:
            is_enclosed = self.check_if_try_catch_enclosed(line_num)
            #if is_enclosed:
            #    print "[!] line {0}, enclosed by try-catch".format(line_num)

            if is_enclosed and try_catch_flag:
                #print "[*] line {0}, a codeblock will not be inserted"\
                #    .format(line_num)
                line_nums_will_be_removed.append(line_num)

        # at the insertion point, move all registers to the end
        # to do so, need to get all the register types
        for i in xrange(len(line_nums)):
            line_num = line_nums[i]
            codeblock = codeblocks[i]
            datablock = datablocks[i]

            if line_num in line_nums_will_be_removed:
                continue

            register_type = self.get_local_types(line_num)
            self.local_type = register_type[:self.nlocal]
            #print "[*] register types: {0}".format(' '.join(register_type))

            lines = self.shift_registers_first(k, register_type, line_num)

            # insert a codeblock
            #print "[*] line {0}, append a codeblock".format(line_num)
            temp_codeblock, temp_datablock = \
                randomize_label(codeblock, datablock, line_num)
            lines.append(temp_codeblock)

            # after the inserted codeblock, move all the original registers to
            # the original positions
            lines += self.shift_registers_last(k, register_type, line_num)

            self.new_lines.append([line_num, lines])

            # after a return statement, add datablock
            for i in xrange(len(self.code) - 1, -1, -1):
                line = self.code[i]
                instruction = get_instruction(line)
                if 'return' in instruction:
                    break

            if datablock != '':
                #print "[*] line {0}, append datablocks after return".format(i)
                temp_codeblock, temp_datablock = \
                    randomize_label(codeblock, datablock, line_num)
                self.new_lines.append([i, [temp_datablock]])

        # update results
        self.merge()
        temp = "\n".join(self.code)
        self.code = temp.splitlines()

        return

    def merge(self):
        """Merging the original code and inserted code.

        The result is stored in self.code
        """
        # TODO: there should be a better way to implement this
        self.new_lines.sort()
        for lines in self.new_lines[::-1]:
            # print lines
            self.code = self.code[:lines[0] + 1] + \
                lines[1] + self.code[lines[0] + 1:]

    def get_code(self):
        """Public method for getting a modified code as one big string."""
        return "\n".join(self.code)

    def check_if_try_catch_enclosed(self, line_num):
        """Return if line at "line_num" is enclosed by try-catch."""
        for i in xrange(len(self.code)):
            line = self.code[i]
            if '.catch' in get_instruction(line):
                label_try, label_catch = get_try_catch_labels(line)
                if line_num >= self.label[label_try] and \
                        line_num < max(i, self.label[label_catch]):
                    return True
        return False


def randomize_label(codeblock, datablock, key):
    """Randomize label names in codeblock using key.

    codeblock = 'some code with :label'
    key = 5

    return 'some code with :ra_5_label'
    """
    labels = []
    lines = codeblock.splitlines() + datablock.splitlines()
    for line in lines:
        temp = line.strip()
        if temp.startswith(':'):
            labels.append((-len(temp), temp))
    labels.sort()

    for l, label in labels:
        codeblock = codeblock.replace(label, ':ra_' + str(key) + label[1:])
        datablock = datablock.replace(label, ':ra_' + str(key) + label[1:])

    return codeblock, datablock


def get_try_catch_labels(line):
    """Return try, catch labels in line.

    line = '.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0'
    or
    line = '.catchall {:try_start_0 .. :try_end_0} :catchall_0'

    then, returns ':try_start_0', 'try_end_0'
    """
    a = re.match(r'[^"{]*{ *(:[^ ]+) *\.\. *(:[^ ]+) *}[^"}]*', line)
    if a:
        _try = a.group(1)
        _catch = a.group(2)
        return _try, _catch
    else:
        return None


def get_arg_type(arg_string):
    """Get arg type string list from arg string.

    I[IIIIZLsomeType;LsomeOtherType;IZFLsomeClassType;
    --> ['I', '[I', 'I', 'I', 'I', 'Z', 'LsomeType', 'LsomeOtherType', 'I',
         'Z', 'F', 'LsomeClassType']
    """
    if arg_string == '':
        return []

    result = []
    now = 0
    array_flag = False
    while now < len(arg_string):
        if array_flag:
            array_flag = False
        else:
            word = ''

        if arg_string[now] == '[':
            array_flag = True
            word += '['
            now += 1
            continue
        elif arg_string[now] == 'L':
            while now < len(arg_string) and arg_string[now] != ';':
                word += arg_string[now]
                now += 1
        else:
            word += arg_string[now]
        now += 1
        result.append(word)
    return result


def get_dot_local_type(lines, i, reg_name):
    """From lines of codes, get line #i and get .local type."""
    if i < 0 or i >= len(lines):
        return None

    line = lines[i]
    if get_instruction(line) != '.local':
        return None

    if reg_name + ' ' in line or \
            reg_name + ',' in line:
        type_part = line.split(':')[-1][0]
        return ARG_TYPE[type_part]
    return None


def get_instruction(line):
    """With given "line", returns a smali instruction."""
    temp = line.strip() + ' '
    if temp == ' ':
        return ''
    if temp[0] == '#':
        return ''
    return temp[:temp.index(' ')]


def make_move_instruction(i_source, i_dest, param_type):
    """With a given "param_type" and positions, returns a move instruction."""
    if param_type == 'object':
        instruction = 'move-object'
    elif param_type == 'data32':
        instruction = 'move'
    elif param_type == 'data64':
        instruction = 'move-wide'
    elif param_type == 'undefined':
        return "# %s v%d, v%d" % ("undefined", i_dest, i_source)

    if i_source >= 16 or i_dest >= 16:
        instruction += '/from16'

    line = "%s v%d, v%d" % (instruction, i_dest, i_source)
    return line


# sorry for the code below... Those are basically paersers for
# detecting "v{number}" That's all!
# wrote the code like below for some special cases related to strings
# (what if a string like "p0 p1" is in the code?) and class/method
# names (like MyMethodName_p0())
def get_register_names(line, args):
    """Get register names in the line ({parameters} and {vx..vy} as well).

    Example:
        >> print get_register_names('move-object/from16 v15, p2', ['vx', 'vy'])
        ['v15', 'p2']
        >> print get_register_names('invoke-virtual {v15, p2, p0}, methodName',
                                    ['{parameters}', 'methodtocall'])
        ['v15', 'p2', 'p0']
    """
    names = []
    temp = line.strip()
    if temp[0] != '.' and temp[0] != ':':
        temp += ' '
        instruction, right = temp.split(' ', 1)
        temp = right.strip() + ','

        for arg in args:
            if arg == 'vx' or arg == 'vy' or arg == 'vz':
                left, right = temp.split(',', 1)
                left = left.strip()
                temp = right.strip()
                names.append(left)
            elif arg == '{parameters}':
                left, right = temp.split('}', 1)
                left = left.strip(' {')
                temp = right.strip(', ')
                vs = left.split(',')
                for v in vs:
                    v = v.strip()
                    if v == '':
                        continue
                    names.append(v)
            elif arg == '{vx..vy}':
                left, right = temp.split('}', 1)
                left = left.strip(' {')
                temp = right.strip(', ')
                vs = left.split('..')
                for v in vs:
                    v = v.strip()
                    names.append(v)
            else:
                pass
    return names


def update_regtype_array(local_type, regs, arg_types):
    """Set self.local_type, using regs and arg_types.

    # regs = ['v0', 'v2', 'v9']
    # arg_types = ['I', 'Landroid/content/Context', 'Landroid/app/Dialog']

    local_type[0] = 'data32'
    local_type[2] = 'object'
    local_type[9] = 'object'
    """
    reg_types = []
    i = 0
    while i < len(arg_types):
        reg_types.append(ARG_TYPE[arg_types[i][0]])
        if reg_types[-1] == 'data64':
            reg_types.append('undefined')
            # i += 1
        i += 1

    if len(reg_types) == len(regs):
        pass
    elif len(reg_types) + 1 == len(regs):
        regs = regs[1:]

    i = 0
    while i < len(regs):
        reg_num = int(regs[i][1:])
        local_type[reg_num] = reg_types[i]
        i += 1

    return


def replace_reg_num(codeblock, reg_range):
    """Replace register numbers 0, 1, ..., k-1 to reg_range.

    For now, reg_range must be in a sorted order.

    One possible problem is, if invoke*/range start with v and ends
    with p, it will generate error. But I am not sure that there is 
    v - p invoke*/range instruction in the real world smali code.
    """

    lines = codeblock.splitlines()
    lines_ = []

    for line in lines:
        instruction = get_instruction(line)
        if instruction == '' or instruction[0] == '.' or instruction[0] == ':':
            lines_.append(line)
            continue
        if instruction not in INSTRUCTION_ARGS:
            return '\n'.join(lines)
        regs = get_register_names(line, INSTRUCTION_ARGS[instruction])

        i = 0
        regs_ = []
        for reg in regs:
            if reg[0] == 'p':
                continue

            reg_from = int(reg[1:])
            reg_to = reg_range[reg_from]
            regs_.append('v' + str(reg_to))
            reg_ = '{%d}' % (i)
            i += 1
            line = line.replace(reg, reg_, 1)
        for j in xrange(i):
            line = line.replace('{%d}' % (j), regs_[j])

        lines_.append(line)
    result = '\n'.join(lines_)

    return result


