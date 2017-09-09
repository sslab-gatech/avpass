#!/usr/bin/env python2

'''
Reflection for all api invoke in smali
'''

import xml.etree.ElementTree as ET
import os, sys
import fileinput
import argparse
import fnmatch, re
import string
from StringIO import StringIO
import random
from random import randint

sys.path.append('./modules')
import pcm
import conf
from common import *
from template_api import *

def gen_random_string():
    return ''.join([random.choice(string.lowercase + string.uppercase) \
                    for _ in range(16)])

def scan_smali_all(smali):
    "scan smali files and return list"

    smali_path = []
    smali_file = []
    num = 0

    #excludes = smali+"/android/"
    #excludes = r'|'.join([fnmatch.translate(x) for x in excludes]) or r'$.'

    for root, dirs, files in os.walk(smali):
        for file in files:
            if file.endswith(".smali"):
                num = num + 1
                path = root
                smali_path.append(path.replace(smali, ''))
                smali_file.append(file)

    return smali_path, smali_file, num

def extract_smali(target):
    "extract apk to smali"

    if not os.path.exists(target):
        print ( "[*] Decoding apk file to smali")
        os.system('tools/apktool d ./'+target+'.apk -o' + target)


def scan_smali(smali):
    "scan smali file list"
    smali_path = []
    smali_file = []

    excludes = smali+"/android/"
    excludes = r'|'.join([fnmatch.translate(x) for x in excludes]) or r'$.'

    for root, dirs, files in os.walk(smali):

        for file in files:
            if file.endswith(".smali"):

                if "android" not in root:
                    smali_path.append(root+"/")
                    smali_file.append(file)
                    continue

    return smali_path, smali_file


def ret_lined_list(code):
    return code.splitlines()


def ret_reg_num(line):
    "Return number of reg"

    line = line.strip()
    reg = line.split(' ')[1].split(',')[0][1:]
    return int(reg)


def __next(x):
    if x == '':
        return None, None
    elif x[0] == 'L':
        left, right = x.split(';', 1)
        left = left + ';'
    elif x[0] == '[':
        left, right = __next(x[1:])
        left = '[' + left
    elif x[0] in 'ZBSCIFJD':
        left, right = x[0], x[1:]
    else:
        raise Exception(x)
    return left, right

def is_blacklist(input, blacklist_arr):
    if input in blacklist_arr:
        return True
    else:
        return False

def get_arg_types(line):

    arg_types = []
    arg_index = []
    index_now = 0

    while True:
        left, line = __next(line)
        if left is None: break

        arg_types.append(left)
        arg_index.append(index_now)

        if left[0] in 'L[ZBSCIF':
            incr = 1
        elif left[0] in 'JD':
            incr = 2
        else:
            raise Exception(left, line)
        index_now += incr

    return arg_types, arg_index


def get_wrapped_line(line, wrapper):
    """example:
        in = "invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;"
        out = "invoke-static {v2, v3, v4}, Lpackage/class;->a3423(Ljava/lang/StringBuffer;D)Ljava/lang/StringBuffer;

        or

        in = "invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;"
        out = "invoke-static {v3}, Lpackage/class;->a2435(I)Ljava/lang/String;"
    """
    # TODO: add try-catch handling part

    x = "invoke-static{mrange} {regs}, {methodclass}->{name}({arg_string}){ret_type}"
    arg_string = wrapper.arg_string
    if wrapper.sv == 'virtual':
        arg_string = wrapper.cls_type + arg_string

    if '..' in wrapper.regs:
        mrange = '/range'
    else:
        mrange = ''

    line = x.format(
        mrange=mrange,
        regs=wrapper.regs,
        methodclass=wrapper.methodclass,
        name=wrapper.name,
        arg_string=arg_string,
        ret_type=wrapper.ret_type)

    return line


primitive_to_object = {
    'Z': 'Ljava/lang/Boolean;',
    'B': 'Ljava/lang/Byte;',
    'S': 'Ljava/lang/Short;',
    'C': 'Ljava/lang/Character;',
    'I': 'Ljava/lang/Integer;',
    'F': 'Ljava/lang/Float;',
    'J': 'Ljava/lang/Long;',
    'D': 'Ljava/lang/Double;'
}

primitive_to_getmethod = {
    'Z': 'booleanValue',
    'B': 'byteValue',
    'S': 'shortValue',
    'C': 'charValue',
    'I': 'intValue',
    'F': 'floatValue',
    'J': 'longValue',
    'D': 'doubleValue'
}


def is_primitive(string):
    if len(string) == 0:
        return False
    else:
        string = string[0]

    if string in 'ZBSCIFJD':
        return True
    else:
        return False


def is_primitive_wide(string):
    if len(string) == 0:
        return False
    else:
        string = string[0]

    if string in 'JD':
        return True
    else:
        return False


def is_invoke(line):
    line = line.strip()
    words = line.split(' ', 1)
    if len(words) == 1: return False
    instruction = words[0]
    if 'invoke-virtual' in instruction \
            or 'invoke-static' in instruction:
        return True
    else:
        return False


class Wrapper(object):
    def __init__(self, line):
        # line = "invode-virtual/range {v1 .. v5}, Lpackage/cls_type;->meth_name(argtypes)ret_type"
        line = line.strip()
        instruction, line = line.split(' ', 1)
        regs, line = line.split('}', 1)
        regs = regs + '}'
        api = line.strip(', ')

        if 'static' in instruction:
            self.sv = 'static'
        elif 'virtual' in instruction:
            self.sv = 'virtual'
        else:
            self.sv = None

        self.regs = regs

        self.arg_string = api.split('(')[1].split(')')[0]
        #self.index_param = [1, 2, 3, ...]
        self.arg_types, self.index_param = get_arg_types(self.arg_string)
        if self.sv == 'virtual':
            self.index_param = [x + 1 for x in self.index_param]

        # class type should be like Lclasstype; OR something like [I.
        #self.cls_type = api.split(';')[0] + ';'
        self.cls_type = api.split('->')[0]
        self.meth_name = api.split('>')[1].split('(')[0]
        #self.meth_name = self.meth_name.split('$')[0]
        self.ret_type = api.split(')')[1]

        self.name = None
        self.path = None
        self.methodclass = None
        self.key = None
        self.text = None

        return


    def gen_wrapper(self):
        template_head = """
.method public static {name}({arg_string}){ret_type}
    
    # {sv} method
    # {cls_type} object

    # method: {meth_name}
    # parameters: {arg_types}
    # return: {ret_type}

    .locals 4
    .prologue

    # v2: Class type array
    const/16 v2, {nargs}
    new-array v2, v2, [Ljava/lang/Class;"""

        template_cls_type_primitive = """
    # parameter {index}: {param_type}
    const/16 v0, {index_hex}
    sget-object v1, {param_type_obj}->TYPE:Ljava/lang/Class;
    aput-object v1, v2, v0"""

        # this could be defined by both const-class & Object.getClass().
        # check both
        template_cls_type = """
    # parameter {index}: {param_type}
    const/16 v0, {index_hex}
    const-class v1, {param_type}
    aput-object v1, v2, v0"""

        template_middle = """
    # v1: method name
    const-string v1, "{meth_name}"

    # v0: object
    #invoke-virtual {{p0}}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    #move-result-object v0
    const-class v0, {cls_type}

    invoke-virtual {{v0, v1, v2}}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v0

    # v1: Object type array
    const/16 v1, {nargs}
    new-array v1, v1, [Ljava/lang/Object;"""

        template_middle_object = """
    # parameter {index}: p{index_param}, {param_type}
    const/16 v2, {index_hex}
    aput-object p{index_param}, v1, v2"""

        template_middle_primitive = """
    # parameter {index}: p{index_param}, {param_type}
    const/16 v2, {index_hex}
    invoke-static/range {{p{index_param} .. p{index_param}}}, {param_type_obj}->valueOf({param_type}){param_type_obj}
    move-result-object v3
    aput-object v3, v1, v2"""

        template_middle_primitive_wide = """
    # parameter {index}: p{index_param1}, p{index_param2}, {param_type}
    const/16 v2, {index_hex}
    invoke-static/range {{p{index_param1} .. p{index_param2}}}, {param_type_obj}->valueOf({param_type}){param_type_obj}
    move-result-object v3
    aput-object v3, v1, v2"""

        template_tail_invoke_virtual = """
    # invoke
    invoke-virtual {{v0, p0, v1}}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;"""

        template_tail_invoke_static = """
    # invoke
    const/16 v2, 0x0
    invoke-virtual {{v0, v2, v1}}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;"""

        template_tail_object = """
    move-result-object v0
    
    check-cast v0, {ret_type}
    return-object v0

.end method"""

        template_tail_void = """
    return-void

.end method"""

        template_tail_primitive = """
    move-result-object v0
    
    check-cast v0, {ret_type_obj}
    invoke-virtual {{v0}}, {ret_type_obj}->{get_primitive_method}(){ret_type}
    move-result v0
    return v0

.end method"""

        template_tail_primitive_wide = """
    move-result-object v0
    
    check-cast v0, {ret_type_obj}
    invoke-virtual {{v0}}, {ret_type_obj}->{get_primitive_method}(){ret_type}
    move-result-wide v0
    return-wide v0

.end method"""

        arg_string = (self.cls_type if self.sv == 'virtual' else '') \
                     + self.arg_string

        head = template_head.format(
            cls_type=self.cls_type,
            name=self.name,
            arg_types=self.arg_types,
            arg_string=arg_string,
            ret_type=self.ret_type,
            nargs=hex(len(self.arg_types)),
            sv=self.sv,
            meth_name=self.meth_name)

        middle = ""
        for i in xrange(len(self.arg_types)):
            if is_primitive(self.arg_types[i]):
                middle = middle \
                         + template_cls_type_primitive.format(
                    index=i,
                    param_type=self.arg_types[i],
                    index_hex=hex(i),
                    param_type_obj=primitive_to_object[self.arg_types[i]])
            else:
                middle = middle \
                         + template_cls_type.format(
                    index=i,
                    param_type=self.arg_types[i],
                    index_hex=hex(i))

        middle = middle + template_middle.format(
            meth_name=self.meth_name,
            cls_type=self.cls_type,
            nargs=hex(len(self.arg_types)))

        for i in xrange(len(self.arg_types)):
            if is_primitive_wide(self.arg_types[i]):
                middle = middle \
                         + template_middle_primitive_wide.format(
                    index=i,
                    index_param1=self.index_param[i],
                    index_param2=self.index_param[i] + 1,
                    param_type=self.arg_types[i],
                    index_hex=hex(i),
                    param_type_obj=primitive_to_object[self.arg_types[i]])
            elif is_primitive(self.arg_types[i]):
                middle = middle \
                         + template_middle_primitive.format(
                    index=i,
                    index_param=self.index_param[i],
                    param_type=self.arg_types[i],
                    index_hex=hex(i),
                    param_type_obj=primitive_to_object[self.arg_types[i]])
            else:
                middle = middle \
                         + template_middle_object.format(
                    index=i,
                    index_param=self.index_param[i],
                    param_type=self.arg_types[i],
                    index_hex=hex(i))

        if self.sv == 'static':
            tail = template_tail_invoke_static.format()
        elif self.sv == 'virtual':
            tail = template_tail_invoke_virtual.format()
        else:
            raise Exception(self.sv)

        if self.ret_type[0] in 'L[':
            tail = tail + template_tail_object.format(
                ret_type = self.ret_type)
        elif self.ret_type[0] in 'V':
            tail = tail + template_tail_void.format()
        elif self.ret_type[0] in 'ZBSCIF':
            tail = tail + template_tail_primitive.format(
                ret_type=self.ret_type,
                ret_type_obj=primitive_to_object[self.ret_type],
                get_primitive_method=primitive_to_getmethod[self.ret_type])
        elif self.ret_type[0] in 'JD':
            tail = tail + template_tail_primitive_wide.format(
                ret_type=self.ret_type,
                ret_type_obj=primitive_to_object[self.ret_type],
                get_primitive_method=primitive_to_getmethod[self.ret_type])
        else:
            raise Exception(self.ret_type[0])

        self.text = head + middle + tail
        return


class Ref(object):
    def __init__(self, apk, api_name, per_num, wantCleanup):
        self.target = apk.split('.')[0]
        self.smali = self.target + "/smali/"
        self.tree = ""
        self.root = ""
        self.output_name = self.target + '_pert.apk'
        self.should_cleanup = wantCleanup

        self.smali_file = []
        self.smali_filename = []
        self.smali_path = []

        self.wrappers = {}

        # PCM module is loaded for checking public methods
        # TODO: PCM and Api must be merged later
        # At least is_method_public() should be merged to Api
        self.public_checker = pcm.PCM(apk, True)
        self.public_checker.load_source()
        self.public_checker.scan_names()
        #os.system("rm -rf " + self.target)


    def get_filename(self, item):
        len_items = len(item.split("/"))
        if len_items is 2:
            fname = item.split("/")[1]
        else:
            fname = item
        return fname


    def find_smalifiles(self, smali_file, smali):
        file_num = 0
        smali_filename= []
        smali_path = []

        for item in smali_file:
            item = item.replace(".", "/")
            len_items = len(item.split("/"))
            file_num = file_num + 1

            # if more than two Activities => scan
            if len_items <= 2: # only file name here
                if len_items is 2:
                    fname = item.split("/")[1]
                else:
                    fname = item

                found = check_smali(smali, fname)
                if found is True:
                    smali_filename.append(fname)
                    smali_path.append(scan_smali(smali, fname)[0])

            # else : add one file
            else:
                temp_path = ""
                items = item.split("/")
                fname = items[len(items)-1]

                found = check_smali(smali, fname)
                if found is True:
                    smali_filename.append(fname)
                    smali_path.append(scan_smali(smali, fname)[0])

        return smali_path, smali_filename, file_num


    # read_manifest file and return smali files' name
    def read_manifest(self, target, root):
        temp_smali_file = []
        for child_1 in root:
            if child_1.tag == 'application':
                for child_2 in child_1:
                    if child_2.tag != "meta-data":
                        i = child_2.attrib.items()
                        for item in i:
                            if '}name' in item[0]:    #manually handle namespace
                                temp_smali_file.append(item[1])
        return temp_smali_file


    def load_source(self, findall):
        extract_smali(self.target)
        self.tree = ET.parse(self.target + '/AndroidManifest.xml')
        self.root = self.tree.getroot()
        self.smali_file = self.read_manifest(self.target, self.root)
        if findall is False:
            print "Loading Smali[if]"
            self.smali_path, self.smali_filename, self.file_num = \
                self.find_smalifiles(self.smali_file, self.smali)
        else:
            print "Loading Smali[else]"
            self.smali_path, self.smali_filename, self.file_num = \
                scan_smali_all(self.smali)


    def read_content(self, index):
        current_file = self.smali+"/"+self.smali_path[index] + "/"+self.smali_filename[index]    #full path
        current_con = ""

        if os.path.exists(current_file):
            current_con = open(current_file).readlines() #read file => lines
        return current_con


    def process_reflection(self, index):
        """
        do reflection & generate a set of wrappers FOR EACH file.

        after getting a set of wrappers, the wrappers can be stored in (1) an 
        original smali file, (2) a separated file in the same directory, or (3)
        one specific wrapper file in an apk. (1) is implemented in this 
        function for now.

        wrappers can be generated per (1) ecah api call, or (2) some same api 
        calls in each method / file / package / etc.. In this implementation 
        we chose (1).
        """

        filename = "{}/{}/{}".format(self.smali,
                                     self.smali_path[index],
                                     self.smali_filename[index])
        #print "Opening %s" % filename

        smali_file = open(filename,'r')
        smali_code = smali_file.read()
        line_array = smali_code.splitlines()
        smali_classname = ''
        for line in line_array:
            if line.strip().startswith('.class '):
                smali_classname = line.split(' ')[-1]
                break
        if smali_classname == '':
            raise Exception(filename)

        mark = False
        new_array = []
        for line in line_array:
            if is_invoke(line):
                wrapper = Wrapper(line)

                # add blacklist functionality
                if is_blacklist(wrapper.meth_name, conf.BLACKLIST_API):
                    new_array.append(line)
                    continue

                wrapper.name = gen_random_string()
                wrapper.path = filename
                wrapper.methodclass = smali_classname
                wrapper.key = wrapper.name + wrapper.path
                wrapper.gen_wrapper()

                ################################################################################
                if self.public_checker.is_method_in_class(
                        wrapper.meth_name,
                        wrapper.cls_type[1:].strip(';')):
                    if self.public_checker.is_method_public(
                            wrapper.meth_name,
                            wrapper.cls_type[1:].strip(';')):
                        pass
                    else:
                        new_array.append(line)
                        continue
                else:
                    if wrapper.cls_type.startswith('Ljava/') or \
                            wrapper.cls_type.startswith('Landroid/'):
                        pass
                    else:
                        # what is this case?
                        new_array.append(line)
                        continue
                    ################################################################################
                mark = True
                newline = get_wrapped_line(line, wrapper)
                new_array.append(newline)
                self.wrappers[wrapper.key] = wrapper
            else:
                new_array.append(line)

        output = '\n'.join(new_array)

        ofile = open(filename, 'w')
        ofile.write(output)
        ofile.close()

        return mark

    def cleanUp(self, should_cleanup):
        if should_cleanup == "yes" or should_cleanup == "Yes":
            print "[*] Packing APK..."
            os.system('tools/apktool b '+self.target+ " -o " + self.target + "_out.apk")
            os.system("rm -rf "+self.target)
            print "[*] Everything done now"
        else:
            print "[*] Everything done now"


    def write_wrappers(self):
        for wrapper in self.wrappers.values():
            if not os.path.exists(wrapper.path):
                f.open(wrapper.path, 'w')
                f.write(".class public {methodclass}\n".format(wrapper.methodclass))
                f.write(".super Ljava/lang/Object\n")
                f.close()
            f = open(wrapper.path, 'a')
            f.write(wrapper.text)
            f.close()
        return


    def reflection(self):
        "reflection for all api invokes in an apk using wrappers"

        print "[*] Start generating wrappers"
        count = 0
        for index in range(0, len(self.smali_filename)):
            if self.process_reflection(index) is True:
                count = count + 1
        print "[*] Done processing %d files => modified %d files" % (len(self.smali_filename), count)

        self.write_wrappers()
        self.cleanUp(self.should_cleanup)


if __name__ == "__main__":

    parser = argparse.ArgumentParser()
    parser.add_argument("-f", "--file", dest="apk_filename", type=str,
                        default=None, help="This is the name of APK")

    # Create the subparser group
    subparsers = parser.add_subparsers(title='arguments')

    # Random obfuscation
    sp = subparsers.add_parser('reflect', help='java reflect', add_help=False)
    sp.add_argument("-c", "--cleanup", dest="cleanup", type=str, default=None,
                    choices=['yes', 'no'], required=True)
    sp.set_defaults(action='reflect')

    # Parse the arguments
    args = parser.parse_args()

    # Do the right action
    if args.action == "reflect":
        print "Java reflection for all api invokes in an apk"

        ref = Ref(args.apk_filename, "", 0, args.cleanup)
        ref.load_source(True)
        ref.reflection()

