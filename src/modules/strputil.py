#!/usr/bin/env python2

import base64
import smali_tool
import itertools
import random

from common import *
from template_api import *
from strp_templete import *

MAX_REG = 16
STR_USING_REG = 2 # for base64_decode
global_method_list = []
#method_num = 5638 # arbitrary number

def ret_fourdigit_random():
    number = random.randint(2000,9999)
    return number

def ret_reg_num(line):
    "Return number of reg"

    line = line.strip()
    reg = line.split(' ')[1].split(',')[0][1:]
    return int(reg)

def reg_num_incr(line):    
    """
    Increase number of register by 1 in line
    e.g.,
      PREV:const-string v0, "kxn"
      NEXT:const-string v2, "kxn"
    """

    reg_num = ret_reg_num(line)
    line = line.replace(str(reg_num), str(reg_num + 1), 1)
    return line

def reg_p_to_v(chunk, line):
    """
    change string in parameter to register
    e.g., 
     PREV:    const-string p0, "CzkbuVyq"
     NEXT:    const-string v0, "CzkbuVyq"
    """

    line = line.strip()
    inst, args = line.split(' ', 1)
    reg, string = args.split(',', 1)
    reg = reg.strip()
    string = string.strip()

    if reg[0] == 'p':
        temp = smali_tool.MethodBlock(chunk)
        nlocals = temp.nlocal
        nparams = temp.nparam

        pnum = int(reg[1:])
        vnum = nlocals + pnum
        reg = 'v{0}'.format(vnum)
        line = '{0} {1}, {2}'.format(inst, reg, string)
    return line

def nullify(line):
    "nullify right hand side"

    left, right = line.split(',', 1)
    return left + ', ""'

def ret_lined_list(code):
    return code.splitlines()

def xor_two_str(s, key):
    key = key * (len(s) / len(key) + 1)
    return ''.join(chr(ord(x) ^ ord(y)) for (x,y) in itertools.izip(s, key)) 

def ret_classname_from_file(filename):
    ofile = open(filename,'r')
    lines = ofile.readlines()
    classname = ""
    for line in lines:
        if ".class " in line:
            classname = line.split(' L')[1].split(';')[0]
            ofile.close()
            return classname

    ofile.close()
    return classname

def remove_string_field(headchunk):
    """
    remove all string field pattern (global string variable)
     e.g., .field public static final aaaaa:Ljava/lang/String; = "bbbbb"
     => remove
    """
    lines_chunk = ret_lined_list(headchunk)

    new_chunk = []

    for line in lines_chunk:
        if '.field' in line and 'Ljava/lang/String;' in line\
            and "\"" in line:
            continue
        new_chunk.append(line)
    new_chunk.append('\n')

    modified_chunk = '\n'.join(new_chunk)

    return modified_chunk

def process_string_all(smali, filename, assetnames, blacklist):
    """
    Insert string encryption method for each const-string
    """
    
    #setup method-list array to null
    global_method_list = []

    filename = smali + filename
    #print "Opening %s" % filename
    classname = ret_classname_from_file(filename)

    smali_file = open(filename,'r')
    smali_code = smali_file.read()
    
    #print classname
    func_array = smali_code.split('.method')
    head = func_array[0]
    head = remove_string_field(head)
    
    func_array = ['.method' + x for x in func_array[1:]]

    mark = False
    chunk_array = []


    for chunk in func_array:        
        chunk, new_method_chunks = \
            inj_code_all(chunk, classname, blacklist)

        chunk_array.append(chunk)
        for item in new_method_chunks:
            chunk_array.append(item)
        if len(new_method_chunks) > 0:
            mark = True

    output = head + '\n'.join(chunk_array)

    ofile = open(filename, 'w')
    ofile.write(output)
    ofile.close()

    return mark

def ret_method_name_from_chunk(lines_chunk):
    "Return method name from chunk"

    for line in lines_chunk:
        if '.method ' in line:
            first_half = line.split('(')[0]
            name = first_half.split(' ')[len(first_half.split(' '))-1]

            name = name.replace('<','')
            name = name.replace('>','')
            return name
    return None

def ret_string_reg(line):
    """
    return reg and string
     e.g., const-string v1, "a"
      reg = v1
      string = "a"
    """
    reg = ""
    string = ""
    if ',' in line and ' ' in line:
        string = line.split(',')[1].strip().replace('\"', '')
        reg = line.split(',')[0].split('const-string ')[1]

    return reg, string

def switch_line_to_ret_string(line, classname, new_method_name, reg):
    """
    Mofity string to ret_string pattern
    e.g., 
      const-string v3, "PSRUTPSRUTPSRU"
       => 
      invoke-virtual {p0}, Landroid/support/myapp2/MainActivity;->getString1()Ljava/lang/String;
      move-result-object v3
    """
    method_invoke = METHOD_INVOKE
    method_invoke = method_invoke.replace('{0}', classname)
    method_invoke = method_invoke.replace('{1}', new_method_name)
    method_invoke = method_invoke.replace('{2}', reg)
    return method_invoke

def ret_new_encrypt_method(methodname, encrypted_string, key):
    "Return new method chunk"

    new_method = STR_XOR_TEMPLETE
    new_method = new_method.replace('{1}', methodname)
    new_method = new_method.replace('{2}', "\""+encrypted_string+"\"")
    new_method = new_method.replace('{3}', "\""+key+"\"")

    return new_method

def is_blacklist(input, blacklist_arr):
    if input in blacklist_arr:
        return True
    else:
        return False

def inj_code_all(chunk, classname, blacklist_arr):
    """
    Inject required code into chunk     
    """
    new_chunk = []
    new_method_chunks = []
    new_method_name = ""

    #if 'java/util/regex/' in chunk:
    #    return chunk, []

    lines_chunk = ret_lined_list(chunk)
    method_name = ret_method_name_from_chunk(lines_chunk)
    method_index = ret_fourdigit_random()

    
    for line in lines_chunk:
        if "const-string" in line:
            reg, ori_string = ret_string_reg(line)

            # if empty string => skip
            if len(ori_string) < 1:
                new_chunk.append(line)
                continue

            if is_blacklist(ori_string, blacklist_arr) == True:
                new_chunk.append(line)
                continue

            # smalitool cannot handle "\" so we just skip this => no choice
            # TODO. is there any way to handle this?
            if "\\" in ori_string:
                new_chunk.append(line)
                continue

            key = random_string()
            encrypted_xor = xor_two_str(ori_string, key) 
            encrypted_string = base64.b64encode(encrypted_xor)
            
            while True:                
                method_index += 1
                new_method_name = method_name + str(method_index)
                
                if new_method_name not in global_method_list:
                    break

            global_method_list.append(new_method_name)

            #change line
            line = switch_line_to_ret_string(line, classname, \
                new_method_name, reg)

            #new method chunk
            new_method = ret_new_encrypt_method(new_method_name,
                encrypted_string, key)
            new_method_chunks.append(new_method)

            #apply change to new chunk
            new_chunk.append(line)

        else:
            new_chunk.append(line)

    modified_chunk = '\n'.join(new_chunk)

    return modified_chunk, new_method_chunks

def process_string(smali, filename):
    """
    Encrypt string and 
     - current file => split chunk => modify register 
       => modify all const_string => write to file
    """
    
    filename = smali + filename
    #print "Opening %s" % filename

    smali_file = open(filename,'r')
    smali_code = smali_file.read()
    func_array = smali_code.split('.method')
    head = func_array[0]
    func_array = ['.method' + x for x in func_array[1:]]

    mark = False
    chunk_array = []
    for chunk in func_array:
        # NOTE this check and continue is just a test for safe-insert
        temp = smali_tool.MethodBlock(chunk)
        nlocals = temp.nlocal
        nparams = temp.nparam
        if nlocals + nparams + STR_USING_REG > MAX_REG:
            chunk_array.append(chunk)
            continue            

        chunk, temp_mark = inj_code_chunk(chunk)
        chunk_array.append(chunk)
        mark = mark or temp_mark
    output = head + '\n'.join(chunk_array)

    ofile = open(filename, 'w')
    ofile.write(output)
    ofile.close()

    return mark

def inj_code_chunk(chunk):
    """
    Inject required code into chunk using smali tools
    1. remove original "const-string"
    2. get code chunks and line nums for insertion
      reg_num for original const-string: original
      reg_num for an additional register: 0, 1
    """

    mark = False
    lines_chunk = ret_lined_list(chunk)
    lines_chunk_new = []

    new_codes = []
    new_appends = []
    line_nums = []
    
    i = 0
    for line in lines_chunk:
        # if const-string exist in line(chunk)
        if "const-string" in line:
            line_void = nullify(line)
            lines_chunk_new.append(line_void)
            i += 1

            line = reg_p_to_v(chunk, line)
            line = reg_num_incr(line) # inc reg +1
            line = reg_num_incr(line) # inc reg +1
            line = base64_str(line) + "\n"
            line = line + gen_string(ret_reg_num(line))
            new_codes.append(line)
            new_appends.append('')
            line_nums.append(i - 1)
            mark = True
        else:
            lines_chunk_new.append(line)
            i += 1
    modified_chunk = '\n'.join(lines_chunk_new)
    
    # insert using smali tools
    # get obfuscated code chunks
    if mark:
        block = smali_tool.MethodBlock(modified_chunk)
        block.insert(2, new_codes, new_appends, line_nums, try_catch_flag=True)
        result = block.get_code()
    else:
        result = chunk

    return result, mark

def modify_local(chunk,current_local, increase):
    "Modify locals by required amount"

    lines_chunk = ret_lined_list(chunk)
    should_modify = False

    for line in lines_chunk:
        if "const-string " in line:
            should_modify = True

    output = ""
    for line in lines_chunk:
        if ".locals" in line and should_modify is True:
            line = line.replace(str(current_local),str(current_local+increase))
            line = "####STRING####\n"+line
        output = output + line +"\n"
    return output, should_modify


def base64_str(line):
    "Encrypt string with base64 in line"

    definition = line.split(', ', 1)[0]
    contents = line.split(', ', 1)[1].strip()
    contents = contents[1:-1]
    return definition+", \""+base64.b64encode(contents)+"\""

def null_str(line):
    "Remove string in line"

    definition = line.split(', ')[0]
    contents = line.split(', ')[1].replace('"', '')
    return definition+", \"" + "\""

def caesar_str(line):
    "caesar encryption string(variable)"

    if ".source" in line  and "\"" in line:
        contents = line.split(' ')[1].replace('"', '')
        return ".source "+"\""+caesar(contents, 5)+"\""

    elif (".param" in line or ".local" in line or "name =" or ".field") \
        and "\"" in line:

        contents = line.split('"')[1]
        contents = contents.split('"')[0]
        line = line.replace("\""+contents+"\"", "\""+caesar(contents, 5)+"\"")
        return line

    return line

def gen_classnames(package_dir, enc_filename, num_encryptor, num_postfix):
    """
    Doesn't necessary now
    """

    output = []
    post = num_postfix

    for x in range(num_encryptor):
        name = package_dir + enc_filename + str(post) + ".smali"
        output.append(name)
        post += 1

    return output

def gen_enc_class_files(encryptors, keys):
    """
    Doesn't necessary now
    """

    for i in range(len(encryptors)):
        f = open(encryptors[i], 'w')
        f.write(keys[i])
        f.close()
