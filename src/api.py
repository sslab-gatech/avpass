#!/usr/bin/env python2

'''
Previous API obfuscation module => now move to pcm and resource module

1. inject random perturbation
ex) python api.py -f netr.apk random -n 10 -a android -c yes
-f filename
random : we want to do random perturbation
-n number of APIs to be inserted
-a name of api
-c cleanup (yes: leave the extracted directory, no : remove dir after perturbation)

1-1. inject one-by-one perturbation
ex) python api.py -f netr.apk inter -a android -c yes
-f filename
inter : we want to inject API between two existing APIs
-a name of api
-c cleanup (yes: leave the extracted directory, no : remove dir after perturbation)

2. list APIs
ex) python api.py -f netr.apk list -c no -ft Date Date
-f filename
list : we want to print out list of APIs
-c cleanup (yes: leave the extracted directory, no : remove dir after perturbation)
-ft filtering argument A and B (we want to find API sequence A->B)

3. inject precison perturbation between A and B
ex) python api.py -f netr.apk insert -n 1 -a android -c no -ft Date Date
insert : we want precison insertion
-f filename
-n number of APIs to be inserted
-a name of api
-c cleanup (yes: leave the extracted directory, no : remove dir after perturbation)
-ft filtering argument A and B (we want to find API sequence A->B)
    => we will insert the API between A ~ B

4. Change package name
ex) python api.py -f test2.apk package -c no
-f filename
-c cleanup (yes: leave the extracted directory, no : remove dir after perturbation)

5. Change file name (after the package/class name perturbation)
ex) python api.py -f test2.apk file -c no
-f filename
-c cleanup (yes: leave the extracted directory, no : remove dir after perturbation)

6. remove all permissions (application will not work after this action)
ex) python api.py -f test.apk permission -c no
-f filename
-c cleanup (yes: leave the extracted directory, no : remove dir after perturbation)

'''

import xml.etree.ElementTree as ET
import os, sys
import fileinput
import argparse
import fnmatch, re
import string
import shutil

from random import randint
from StringIO import StringIO

sys.path.append('./modules')
from benign_permissions import *
from template_api import *
import conf

CAESAR_NUM = 4
MAX_LOCAL = 4
FUNCTION_CALL = ['iget', 'invoke', 'iput', 'sget', 'sput', 'aget', 'aput']
INSERT_PERM_NUM = 15

def rot13(plaintext):
    rot13m = string.maketrans(
    "ABCDEFGHIJKLMabcdefghijklmNOPQRSTUVWXYZnopqrstuvwxyz",
    "OPQRSTUVWXYZNopqrstuvwxyznBCDEFGHIJKLMAbcdefghijklma")
    return string.translate(plaintext, rot13m)

def rot13_only_dir(filename):
    if '/' in filename:
        length = len(filename.split('/') )
        name = filename.split('/')[length-1]
        name_length = len(name)
        path = rot13(filename[:-name_length])
        return path + name

    # there is no path => just return the original string
    return filename

def check_function_call_exist(line):
    for item in FUNCTION_CALL:
        if item in line:
            return True
    return False

def ret_method_name(line):
    if '(' in line:
        line = line.split('(')[0]
        length = len(line.split(' '))
        return line.split(' ')[length-1]
    return line

def mod_method_define_name(line):
    #print "method : %s" %
    method_name = ret_method_name(line)
    return line.replace(method_name+'(', rot13(method_name)+'(')

def mod_method_call_name(line):
    method_name = line.split('->')[1].split('(')[0]
    return line.replace("->"+method_name+"(", "->"+rot13(method_name)+"(")

def ret_class_from_method_call(line):
    return_list = re.findall(r'(?<=L).*?(?=;)', line)[0]
    return return_list

def caesar(plaintext, shift):

    shift %= 26 # Values greater than 26 will wrap around

    alphabet_lower = string.ascii_lowercase
    alphabet_upper = string.ascii_uppercase
    shifted_alphabet_lower = alphabet_lower[shift:] + alphabet_lower[:shift]
    shifted_alphabet_upper = alphabet_upper[shift:] + alphabet_upper[:shift]
    alphabet = alphabet_lower + alphabet_upper
    shifted_alphabet = shifted_alphabet_lower + shifted_alphabet_upper
    table = string.maketrans(alphabet, shifted_alphabet)
    return plaintext.translate(table)

# TODO-need further test
def ret_rot_filename(filename):
    filename = rot13(filename.split('.')[0])
    return filename+".smali"

def ret_caesar_filename(filename):
    if "\$" not in filename:
        filename = caesar(filename.split('.')[0],4)
    else:
        file1, file2 = filename.split('\$')

    #print caesar(filename, -4)
    return filename+".smali"

def ret_random(dirlist):
    output = {}
    for item in dirlist:
        for word in item.split('/'):
            curr_output = len(output)
            if word in output:
                continue

            while len(output) is curr_output:
                ran_word = ret_random_word()
                if word not in output and ran_word not in output.values():
                    output[word] = ran_word
    return output

def get_locals(chunk):
    lines_chunk = ret_lined_list(chunk)
    for line in lines_chunk:
        if ".locals" in line:
            return return_local(line)

def return_local(line):
    return int(line.split('locals ')[1])

def array_to_string(arr, delimit):
    output = delimit.join([str(x) for x in arr])
    return output

def enum_dirs(path):
    target = path + '/smali/'
    sub = []
    #sub = os.walk(target).next()[1]
    for dirname, dirnames, filenames in os.walk(target):
    # print path to all subdirectories first.
        for subdirname in dirnames:
            temp = os.path.join(dirname, subdirname)
            out = temp.replace(target, '')
            sub.append(out)

    return sorted(sub)

def ret_only_filename(filename):
    """java/lang/Object.smali ==> return Object"""
    output = ""
    if '/' in filename :
        length = len(filename.split('/'))
        output = filename.split('/')[length-1]
        return output

    return output

def mod_name_manifest(filename):
    manifestFile = ET.parse(filename + '/AndroidManifest.xml')
    root = manifestFile.getroot()

    # get package name
    package = root.attrib['package']
    old_package = package.split('.')
    num_pack_words = len(old_package)
    words = ret_random_words(num_pack_words)

    #print words
    new_package = array_to_string(words, ".")
    root.attrib['package'] = new_package

    return old_package, words

def canInsert(chunk, registers):
    lines_chunk = ret_lined_list(chunk)
    for line in lines_chunk:
        if '.locals ' in line:
            if return_local(line) < registers:
                return True
    return False

def alreadyModified(chunk):
    lines_chunk = ret_lined_list(chunk)
    for line in lines_chunk:
        if '###' in line:
            return True
    return False

def ret_lined_list(code):
    return code.splitlines()

def cmd_list():
    return 0

def get_all_cmds():
    out = []
    for k, f in globals().items():
            if k.startswith("cmd_"):
                    out.append((k[4:], f))
    return out

def extract_smali(target):
    if not os.path.exists(target):
        print "[*] Decoding apk file to smali"
        os.system('apktool d ./'+target+'.apk -o' + target)

def check_smali(smali, fname):
    """ is there smali file? """
    found = False
    for root, dirs, files in os.walk(smali):
        for file in files:
            if file.startswith(fname) and file.endswith(".smali"):
                found = True
                return found
                #continue
    return found

def scan_smali(smali, fname):
    smali_path = []
    found = False

    for root, dirs, files in os.walk(smali):
        for file in files:
            if file.startswith(fname) and file.endswith(".smali"):
                smali_path.append(root+"/")
                found = True
                return smali_path[0], found
    return smali_path, found

def scan_smali_all(smali):
    smali_path = []
    smali_file = []
    caesar_file = []
    num = 0

    #excludes = smali+"/android/"
    #excludes = r'|'.join([fnmatch.translate(x) for x in excludes]) or r'$.'

    for root, dirs, files in os.walk(smali):

        for file in files:
            #if file.startswith(fname) and file.endswith(".smali"):
            if file.endswith(".smali"):
                #print file

                # TODO : how to differenciate malware use this name?
                # if we don't process this, we will fail with modern APKs
                #if "android" not in root:
                    #print file
                num = num + 1
                path = root
                smali_path.append(path.replace(smali, ''))
                caesar_file.append(ret_rot_filename(file).split('.')[0])
                smali_file.append(file)
                #continue

    return smali_path, smali_file, caesar_file, num

class Api(object):

    def __init__(self, apk, api_name, per_num, wantCleanup):
        self.target = apk.split('.')[0]
        self.smali = self.target + "/smali"
        self.tree = ""
        self.api_name = api_name
        self.root = ""
        self.output_name = self.target + '_pert.apk'
        self.num_pert = per_num
        self.cleanup = wantCleanup
        self.packname = ""

        self.smali_file = []
        self.smali_filename = []
        self.smali_path = []
        self.file_num = 0
        self.caesar_file = []

        self.already_modified = {}
        self.invoke_local_arr = []
        self.local_num_arr = []

        self.precison_list = []

    def find_smalifiles(self, smali_file, smali):

        file_num = 0
        smali_filename= []
        caesar_smali_filename= []
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
                    caesar_smali_filename.append(ret_rot_filename(fname))
                    smali_path.append(scan_smali(smali, fname)[0])

            # else : add one file
            else:
                temp_path = ""
                items = item.split("/")
                fname = items[len(items)-1]

                found = check_smali(smali, fname)
                if found is True:
                    smali_filename.append(fname)
                    caesar_smali_filename.append(ret_rot_filename(fname))
                    smali_path.append(scan_smali(smali, fname)[0])

        return smali_path, smali_filename, caesar_smali_filename, file_num


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
            self.smali_path, self.smali_filename, self.caesar_file, self.file_num = \
                self.find_smalifiles(self.smali_file, self.smali)
        else:
            print "Loading Smali[else]"
            #print self.smali_path
            self.smali_path, self.smali_filename, self.caesar_file, self.file_num = \
                scan_smali_all(self.smali)
            #print len(self.smali_filename)

    def read_con(self, current_file, index):
        #print current_file
        if os.path.exists(current_file+'.smali'):
            current_con = open(current_file+'.smali').read()
        else:
            for file in os.listdir("./"):
                if file.endswith(self.smali_filename[index]+".smali"):
                    current_con = open(file+'.smali').read()


    def read_con2(self, filename):
        return open(filename, 'r').readlines()

    def read_con3(self, current_file, index):
        #current_file =  self.target+"/smali"+current_file
        #print current_file

        if os.path.exists(current_file):
            #print "load random file for api perturbation"
            current_con = open(current_file).read()
        else:
            for file in os.listdir("./"):
                if file.endswith(self.smali_filename[index]+".smali"):
                    current_con = open(file+'.smali').read()
        return current_con

    def read_con_lines(sellf, current_file, index):
        if os.path.exists(current_file+'.smali'):
            #read file => lines
            current_con = open(current_file+'.smali').readlines()
        else:
            for file in os.listdir("./"):
                if file.endswith(self.smali_filename[index]+".smali"):
                    current_con = open(file+'.smali').readlines()

        return current_con

    def ret_file_from_idx(self, index):
        #full path
        current_file = self.smali_path[index] + self.smali_filename[index]
        return current_file

    def ret_file_from_idx2(self, index):
        #full path
        current_file = self.smali_path[index] +"/" +self.smali_filename[index]
        return current_file

    def process_list(self, filter):
        for index in range(0, len(self.smali_path)-1):

            current_file = self.ret_file_from_idx(index)
            current_con = self.read_con_lines(current_file, index)

            line_num = 0
            previous_line_num = 0
            previous_invoke = ""

            print "\n[*] Reading: "+ current_file+".smali"
            for line in current_con:
                line_num = line_num + 1
                if 'invoke' in line:
                    if filter is None:
                        print str(line_num)+":"+self.smali_filename[index]+":"\
                            +line.strip()
                    else:
                        if filter[0] in previous_invoke and filter[1] in line:
                            print "Printing %s %s" % (filter[0], filter[1])
                            print str(previous_line_num)+":"+self.smali_filename[index]+":"\
                                +previous_invoke.strip()
                            print str(line_num)+":"+self.smali_filename[index]\
                                +":"+line.strip()
                    previous_invoke = line
                    previous_line_num = line_num

    def ret_target_chunk(self, func_array):
        modifiable_chunk = []
        chunk_num = 0
        for chunk in func_array:
            if canInsert(chunk, 5) is True:
                modifiable_chunk.append(chunk_num)
            chunk_num = chunk_num + 1

        chunk_index = randint(0, len(modifiable_chunk)-1)
        chunk_num = modifiable_chunk[chunk_index]

        return chunk_num

    # inject code for random perturbation
    def inj_code_chunk(self, chunk, current_local, increase):
        lines_chunk = ret_lined_list(chunk)
        already_modified = alreadyModified(chunk)

        output = ""

        # TODO : check valid
        code = gen_code(-1, self.api_name, self.num_pert)
        for line in lines_chunk:
            if ".locals" in line:
                if already_modified == False:
                    line = line.replace(str(current_local),str(current_local+increase))
                    line = "####API####\n"+line
                line = line + '\n' + code
            output = output + line + "\n"

        return output

    # inject code for inter perturbation
    def inj_code_chunk2(self, chunk, current_local, increase):
        lines_chunk = ret_lined_list(chunk)
        already_modified = alreadyModified(chunk)
        output = ""

        # TODO : check valid
        code = gen_code(current_local-1, self.api_name, self.num_pert)

        for line in lines_chunk:
            if ".locals" in line:
                if already_modified == False:
                    line = line.replace(str(current_local),str(current_local+increase))
                    line = "####API####\n"+line

            elif "invoke-" in line:
                line = (code + "\n") *30 + line
            output = output + line + "\n"

        return output


    def process_random(self):
        #print self.smali_filename
        file_index = randint(0,len(self.smali_filename)-1)
        filename = self.target + "/smali"+self.ret_file_from_idx2(file_index)
        #print filename
        smali_code = self.read_con3(filename, file_index)
        #print smali_code
        func_array = smali_code.split('.method')

        chunk_array = []
        target_num = self.ret_target_chunk(func_array)

        # modify
        local = get_locals(func_array[target_num])
        #inj_code_chunk(self, chunk, current_local, increase):
        inj_chunk = self.inj_code_chunk(func_array[target_num], local, 1)

        index = 0
        for chunk in func_array:
            if index is not target_num:
                chunk_array.append(chunk)
            else:
                chunk_array.append(inj_chunk)
            index = index + 1

        output = '\n.method'.join([str(x) for x in chunk_array])


        ofile = open(filename, 'w')
        ofile.write(output)
        ofile.close()

        print "[*] Done random insertion to %s.smali" % filename

    def ret_name_from_idx(self, target, index):
        filename = self.ret_fullpath(target, self.smali_path[index],\
                self.smali_filename[index])
        only_filename = self.smali_filename[index]
        return filename, only_filename


    def process_inter(self):
        print "[*] Start to insert API between two existing APIs"

        for index in range(0, len(self.smali_path)):
            chunk_array = []
            filename, only_filename = self.ret_name_from_idx(self.target, index)

            if only_filename.startswith('R.sm') or only_filename.startswith('R$'):
                continue

            smali_code = open(filename, 'r').read()
            func_array = smali_code.split('.method')

            for farray in func_array:
                local = get_locals(farray)
                if local > MAX_LOCAL or local is None:
                    chunk_array.append(farray)
                    continue
                print "Injecting code to %s" % filename
                inj_chunk = self.inj_code_chunk2(farray, local, 1)
                chunk_array.append(inj_chunk)

            output = '\n.method'.join([str(x) for x in chunk_array])
            ofile = open(filename, 'w')
            ofile.write(output)
            ofile.close()


    def read_registers(self):

        # for all files
        for index in range(0, len(self.smali_path)):
            invoke_local = {}
            local_num = {}

            current_file = self.ret_file_from_idx(index)
            current_con = self.read_con(current_file, index)

            line_num = 0
            previous_line_num = 0
            current_local = -1
            previous_line = ""
            previous_invoke = ""

            print "\n[*] Reading: "+ current_file+".smali"
            for line in current_con:
                line_num = line_num + 1

                #if '.method' in line or '.locals' in line or '.registers' in line:
                if '.locals' in line or '.registers' in line:
                    if "###" not in previous_line:
                        self.already_modified[line_num] = False
                        current_local = line_num
                        # store maximum registers for each method
                        local_val = int(line.split('locals ')[1])
                        # what is current .locals value? (at this line)
                        local_num[line_num] = local_val

                    else:
                        self.already_modified[line_num] = True
                        current_local = line_num
                        local_val = int(line.split('locals ')[1])
                        local_num[line_num] = local_val     # -1 because we already increased

                    previous_invoke = line
                    previous_line_num = line_num
                previous_line = line

            # line number : maximum register
            self.local_num_arr.append(local_num)

            # line number : current_local
            self.invoke_local_arr.append(invoke_local)


    def decide_perturbation(self, startApi, endApi):
        # should handle multiple files, we select which file to perturb here
        if startApi is "" and endApi is "":
            current_file = 0
            # randomly choose file to perturb => select file
            self.file_num = randint(1,len(self.smali_path))
             # of places for inserting code
            invoke_len =    len(self.invoke_local_arr[len(self.smali_path)-1])
            rand_line_num = randint(0,invoke_len)    # select random place in file

            # get exact line number
            perturbation = self.invoke_local_arr[len(self.smali_path)-1].keys()[rand_line_num-1]
            # line of .locals, we should increse 1
            loc_line_num = self.invoke_local_arr[len(self.smali_path)-1][perturbation]
            # current max locals, we will use "max+1"
            max_locals = self.local_num_arr[len(self.smali_path)-1][loc_line_num]

            return perturbation, loc_line_num, max_locals

        else:
            print "not here"

    def modify_max_register(self, loc_line_num, max_locals):
        print "[*] find and modify maximum registers"
        count = 0
        for index in range(0, self.file_num):
            #print current_file
            current_file =  self.smali_path[index] + self.smali_filename[index]\
                + ".smali"

            for line in fileinput.input(current_file, inplace=1):
                count = count+1
                if count == loc_line_num and self.already_modified[count] == False:
                    #should modify this!!!!
                    line = line.replace(str(max_locals),str(max_locals+1))
                    line = "###MOD###\n"+line

                sys.stdout.write(line)
            fileinput.close()

    def choose_injection_code(self, loc_line_num, max_locals):
        # perturbation : insert code
        pert_count = 0
        if self.already_modified[loc_line_num] == True:
            code = gen_code(max_locals-2, self.api_name, self.num_pert)
        else:
            code = gen_code(max_locals-1, self.api_name, self.num_pert)
        return code

    def modify_file(self, perturbation, code):
        line_count = 0
        file_num = 1 #manually handle first file
        for index in range(0, self.file_num):
            current_file =    self.smali_path[index] + self.smali_filename[index]
            for line in fileinput.input(current_file + ".smali", inplace=1):
                    line_count = line_count+1
                    if line_count == perturbation + 1:
                        line = '\n\n' + line + code + '\n\n'
                    sys.stdout.write(line)

        fileinput.close()
        print "[*] Done injecting %d \"%s\" API-calls" % (self.num_pert, self.api_name)

    def cleanUp(self, cleanup):
        if cleanup == "yes" or cleanup == "Yes":
            print "[*] Packing APK..."
            os.system('apktool b '+self.target+ " -o " + self.target + "_out.apk")
            os.system("rm -rf "+self.target)
            print "[*] Everything done now"
        else:
            print "[*] Everything done now"

    def inject_code(self, startApi="", endApi=""):
        perturbation, loc_line_num, max_locals =\
            self.decide_perturbation(startApi, endApi)
        #print self.precison_list
        self.modify_max_register(loc_line_num, max_locals)
        code = self.choose_injection_code(loc_line_num, max_locals)
        self.modify_file(perturbation, code)
        self.cleanUp(self.cleanup)

    def ret_random(self, dirlist):
        print "[*] Choosing random words from user dictionary"
        output = {}
        for item in dirlist:
            if item.split('/')[0] is 'android':
                continue

            for word in item.split('/'):
                curr_output = len(output)
                if word in output:
                    continue

                while len(output) is curr_output:
                    ran_word = ret_random_word()
                    if word not in output and ran_word not in output.values():
                        output[word] = ran_word
        return output

    def isClassModifiable(self,line, wordlist):
        if 'L' in line and '/' in line:
            for item in wordlist:
                if 'L'+item in line or '/'+item in line:
                    return True
        return False

    def ret_package_name(self, line):
        temp = line.split('package=\"')[1]
        temp = temp.split('\">')[0]
        #return temp.replace('.','/')
        return temp

    # change the value of "android:name=CONTENTS"
    def ret_android_name(self, line, doProcess):

        if doProcess is not True:
            temp = line.split('android:name=\"')[1]
            temp = temp.split('\"')[0]
            #if temp.startswith('.'):
            #    temp = temp[1:]
            temp =  temp.replace('.','/')
            return temp

        else:
            temp = line.split('android:name=\"')[1]
            temp = temp.split('\"')[0]
            temp = temp.split(".")[len(temp.split("."))-1]

        output = ""
        for x in range(len(temp)):
            output = output + temp[x]
        return output

    def ret_android_name2(self, line):
        #print "HERE %s" %line
        temp = ""
        if 'android:name=\"' in line:
            temp = line.split('android:name=\"')[1]
            temp = temp.split('\"')[0]
        return temp

    def isXMLModifiable_file(self, line, target, fullpackage):
        if 'android:name' in line:
            fullpackage = fullpackage.replace('.','/')
            name = self.ret_android_name(line, False)
            temppath = fullpackage + name + ".smali"
            temppath2 = ""

            if '/' in name:
                #t_name = name.split('/')[:-1]
                #t_name2 = ''.join(t_name)
                #name = name.replace(t_name2, rot13(t_name2))
                rotname = rot13(name)
                temppath2 = fullpackage + rotname + ".smali"

            #debug : should consider more cases
                if os.path.exists(temppath) or os.path.exists(target+"/smali/"+rotname+".smali"):
                    return 1
            elif os.path.exists(target+"/smali/"+name+".smali"):
                return 1
            elif os.path.exists(temppath2):
                return 2
        return 0

    def replaceClassname(self, line, wordlist):
        for item in wordlist:
            line = line.replace('L'+item, 'L'+wordlist[item])
            line = line.replace('/'+item, '/'+wordlist[item])
            line = line.replace(item+'/', wordlist[item]+'/')
        return line

    def replaceClass_from_XML(self, line):
        packagename = self.ret_package_name(line)
        return line

    def replaceClass_from_XML_file(self, line, case):
        # <activity android:name="GameAlertDialog" android:theme>

        if case == 1:
            #andname = self.ret_android_name(line, True) + "\""
            andname = self.ret_android_name2(line) + "\""
            #print andname
            line = line.replace(andname, rot13(andname))
            return line
        if case == 2:
            andname = self.ret_android_name2(line) + "\""
            #print andname
            line = line.replace(andname, rot13(andname))
            return line

    def find_package(self, filename, target):
        package = ""
        fullpath = target+"/smali/"
        con = open(filename, 'r').readlines()
        for line in con:
            if 'package=' in line:
                package = fullpath + self.ret_package_name(line) + '/'
                return package
        return package

    def find_package_name(self, filename, target):
        package = ""
        con = open(filename, 'r').readlines()
        for line in con:
            if 'package=' in line:
                package = self.ret_package_name(line)
                return package
        return package

    def isXMLModifiable(self, line, target, fullpackage):
        fullpath = target+"/smali/"
        if 'package=' in line:
            return True
            #fullpath = fullpath + self.ret_package_name(line) + '/'
            #for item in wordlist:
            #    if "\""+item in line or "."+item in line:
            #        return True
        return False

    # change only the manifest file
    def mod_manifest(self, target, forPackage):
        print "[*] Modifying AndroidManifest.xml file"

        package_name = self.find_package(target+'/AndroidManifest.xml', target)
        extract_packname = self.find_package_name(target+'/AndroidManifest.xml', target)

        if forPackage == True:
            print "[*] Change manifest for pakcage perturbation"
            for line in fileinput.input(target+'/AndroidManifest.xml', inplace=1):
                if self.isXMLModifiable(line, target, package_name):
                    line = line.replace(extract_packname, rot13(extract_packname))
                sys.stdout.write(line)
            fileinput.close()
        else:
            print "[*] Change manifest for file perturbation"
            for line in fileinput.input(target+'/AndroidManifest.xml', inplace=1):
                if '<activity' in line or '<receiver' in line or '<service' in line:
                #if self.isXMLModifiable_file(line, target, package_name):
                #    case =  self.isXMLModifiable_file(line, target, package_name)
                    line =  self.replaceClass_from_XML_file(line, 1)
                    #print line
                sys.stdout.write(line)
            fileinput.close()
        return package_name

    def mod_class(self, filename):#, wordlist):
        print "[*] Modifying each smali file (classname)"

        for line in fileinput.input(filename, inplace=1):
            if self.isClassModifiable(line):#, wordlist):
                line = self.replaceClassname(line)#, wordlist)
            sys.stdout.write(line)
        fileinput.close()

    def scan_modify_class(self, target):#, wordlist):
        #self.mod_manifest(self.target, wordlist, True)
        for i in range(0,len(self.smali_path)):
            filename = self.ret_fullpath(self.target, self.smali_path[i]\
                , self.smali_filename[i])
            self.mod_class(filename)#, wordlist)

    def rename_dir(self, target):
        print "[*] Renaming dirname"
        path = target + '/smali/'

        for (root, dirnames, filenames) in os.walk(path):
            for idx in range(len(dirnames)):
                old = os.path.join(root, dirnames[idx])
                new = os.path.join(root, rot13(dirnames[idx]))

                #I should change classfile according to the directory here!
                #code here
                #scan smali => for each => .class =>

                #os.rename(old, new)
                shutil.move(old, new)
                dirnames[idx] = rot13(dirnames[idx])  # simple trick to update list

    def ret_fullpath(self, target, path, filename):
        if '/' in path:
            filename = target + '/smali/' + path + '/'+ filename
        else:
            filename = target + '/smali' + path + '/'+ filename
        return filename

    def change_filename(self):
        print "changing Filename"
        #print len(self.smali_path)
        #print len(self.smali_filename)
        #print self.smali_filename

        for index in range(0, len(self.smali_path)):
            only_filename = self.smali_filename[index]
            if only_filename.startswith('R.sm') or only_filename.startswith('R$'):
                #print "skip this file : %s" % only_filename
                continue

            oldname = self.ret_fullpath(self.target, self.smali_path[index]\
                , self.smali_filename[index])
            newname = self.ret_fullpath(self.target, self.smali_path[index]\
                , ret_rot_filename(self.smali_filename[index]))
            print "From: %s, To: %s" % (oldname, newname)
            os.rename(oldname, newname)

    def rot_Rline(self, line):
        temp = line.split('L')[1].split(';')[0]

        length = len(temp.split('/'))
        first = temp.split('/')[:-1]
        second = temp.split('/')[length-1]

        output = ""
        for item in first:
            item = rot13(item)
            output = output + item+"/"
        temp2 = output + second

        line = line.replace(temp, temp2)
        return line

    def handle_Rfile(self, filename):

        for line in fileinput.input(filename, inplace=1):
            if 'L' in line and ';' in line and 'R' in line:
                line = self.rot_Rline(line)
            sys.stdout.write(line)
        fileinput.close()

    def change_Rfile(self):
        #print self.smali_filename
        for index in range(0, len(self.smali_path)):
            only_filename = self.smali_filename[index]
            if only_filename.startswith('R.sm') or only_filename.startswith('R$'):
                current_file =  self.target + '/smali' + self.smali_path[index] + '/'\
                +self.smali_filename[index]

                print " >> processing %s file" % only_filename
                self.handle_Rfile(current_file)

    def find_classname_from_line(self, line):
        return_list = []

        if "L" not in line:
            return 0
        """
        Lsplit = line.split('L')[1:]
        for item in Lsplit:
            if ';' in item:
                return_list.append(item.split(';')[0])
        """
        return_list = re.findall(r'(?<=L).*?(?=;)', line)
        return return_list



    def check_exist(self, name, index):
        #print "name : %s" % name
        # => qcn/obrfcwr/pohhsfm/PfwrusDfcjwrsf

        #print self.smali_filename
        #print self.smali_path
        #print "filename : %s" % name

        #also this case doesn't care about relative path case
        path = self.smali_path[index]
        packagename = self.packname.replace('.','/')
        filename1 = packagename + name + ".smali"  #changed name
        filename2 = self.target + '/smali/' + name + ".smali"   #previous structure

        #print "rotname %s:" % rot13_only_dir(name)
        #print filename1
        #print filename2

        filename3 = packagename + rot13_only_dir(name) + ".smali"  #changed name
        filename4 = self.target + '/smali/' + rot13_only_dir(name) + ".smali"   #previous structure

        if os.path.exists(filename1) or os.path.exists(filename2):
            #print "CLASSNAME exist"
            return True

        if os.path.exists(filename3) or os.path.exists(filename4):
            #print "ROT CLASSNAME exist"
            return True

        """
        for smalifile in self.smali_filename:
            if '.smali' in smalifile:
                smalifile = smalifile.split('.smali')[0]

            #print name
            #print "SCANNING %s" % ret_only_filename(name)
            if smalifile is ret_only_filename(name):
                #print "SCANNED NAME EXIST %s, %s" % (smalifile, name)
                return True
        """

        return False
        #print filename1, filename2

    def mod_name_rot(self, name):
        newname = ""
        if '/' in name:
            newname = rot13(name.split('/')[len(name.split('/'))-1])
            newname = name.replace('/'+name.split('/')[len(name.split('/'))-1],\
                '/'+newname)
        else:
            newname = rot13(name)
        return newname

    #modify except for .class case
    #JIN : narrow down the problem to here
    def mod_line_class(self, line, index):
        #extract all name between L; => []

        names =  self.find_classname_from_line(line)
        #print names

        for i in range(0,len(names)):
            if self.check_exist(names[i], index) is True:
                #newname = self.mod_name_rot(names[i])
                newname = rot13(names[i])
                line = line.replace(names[i]+';', newname+';')

        return line

    #modify .class case
    def mod_line_class2(self, line):
        #print line
        retvalue = self.find_classname_from_line(line)

        if retvalue is not 0:
            name =  retvalue[0]
        else:
            return line
        #newname = self.mod_name_rot(name)
        newname = rot13(name)
        line = line.replace(name+';', newname+';')
        return line

    def remove_all_permission(self):
        for line in fileinput.input(self.target+'/AndroidManifest.xml', inplace=1):
            if '<uses-permission' in line:
                line = ""
            sys.stdout.write(line)
        fileinput.close()

    def insert_permission(self):

        insert_str = return_benign_perm(INSERT_PERM_NUM)
        
        for line in fileinput.input(self.target+'/AndroidManifest.xml', inplace=1):
            if '</manifest>' in line or '< /manifest>' in line:
                line = insert_str + "\n" + line
            sys.stdout.write(line)
        fileinput.close()
        

    # TODO : fix problem here! (Bug)
    def change_reference(self, packname):
        print ">> changing all references for file perturbation"


        for index in range(0, len(self.smali_path)):
            filename = self.ret_fullpath(self.target, self.smali_path[index],\
                self.smali_filename[index])
            only_filename = self.smali_filename[index]

            #skip the resource file
            if only_filename.startswith('R.sm') or only_filename.startswith('R$'):
                continue

            # stratege : check L~; and modify if the classname exist
            # TODO not opening correctly
            #log.info(rot13(filename))
            for line in fileinput.input(filename, inplace=1):
                #print filename

                if '.class' in line:
                    line = self.mod_line_class2(line)
                    #line = line +"\nLETS CLASS"
                elif 'L' in line and ';' in line:
                    #print "HERE"
                    line = self.mod_line_class(line, index)
                    #line = line +"\nLETS LINE"
                sys.stdout.write(line)
            fileinput.close()

    def method_perturbation(self):
        print "[*] Method name perturbation"

        for index in range(0, len(self.smali_path)):
            filename = self.ret_fullpath(self.target, self.smali_path[index],\
                self.smali_filename[index])
            only_filename = self.smali_filename[index]

            #skip the resource file
            if only_filename.startswith('R.sm') or only_filename.startswith('R$'):
                continue

            #The below two lines are for test
            #lines = open(filename,'r').readlines()
            #for line in lines:
            for line in fileinput.input(filename, inplace=1):
                if '->' in line and check_function_call_exist(line) == True and '->on' not in line and '><' not in line and '>run(' not in line:
                    classname = ret_class_from_method_call(line)
                    if self.check_exist(classname, 0) == True:
                        #print line.strip()
                        #print mod_method_call_name(line).strip()
                        line = mod_method_call_name(line).strip()+"\n"

                elif '.method' in line and ' on' not in line and ' <' not in line and 'run(' not in line:
                    #print line.strip()
                    #print mod_method_define_name(line)
                    line = mod_method_define_name(line)+"\n"
                sys.stdout.write(line)
            fileinput.close()

            """
            #for line in fileinput.input(filename, inplace=1):
                #print filename
                if '.class' in line:
                    line = self.mod_line_class2(line)
                    #line = line +"\nLETS CLASS"
                elif 'L' in line and ';' in line:
                    #print "HERE"
                    line = self.mod_line_class(line, index)
                    #line = line +"\nLETS LINE"
                sys.stdout.write(line)
            fileinput.close()
            """


    def package_perturbation(self):
        print "[*] Package/Class name perturbation"

        #just modify AndroidManifest.xml and change the directory's name

        self.packname = self.mod_manifest(self.target, True)
        self.rename_dir(self.target)
        self.cleanUp(self.cleanup)

    # TODO : this is problem now
    def file_perturbation(self):
        print "[*] File name perturbation"
        self.packname = self.mod_manifest(self.target, False)
        self.change_reference(self.packname)
        self.change_filename()

        # TODO : handle contents of R file
        self.change_Rfile()
        self.cleanUp(self.cleanup)

    def permission_remove(self):
        print "[*] Removing all permissions from manifest.xml"
        self.remove_all_permission()
        self.cleanUp(self.cleanup)

    def permission_insert(self):
        print "[*] Inserting benign permissions to manifest.xml"
        self.insert_permission()
        self.cleanUp(self.cleanup)


if __name__ == "__main__":

    parser = argparse.ArgumentParser()

    #parser.add_argument("-v", action='store_true')
    parser.add_argument("-f", "--file", dest="apk_filename", type=str,
                                 default=None, help="This is the name of APK")

    # Create the subparser group
    subparsers = parser.add_subparsers(title='arguments')

    # Random perturbation
    lp = subparsers.add_parser('random', help='Random Perturbation', add_help=False)
    lp.add_argument("-n", "--num", dest="number", type=int, default=None,
                                    required=True)
    lp.add_argument("-a", "--apiname", dest="api", type=str, default=None,
                                    choices=['android', 'java', 'javax', 'apache'
                                    , 'json', 'junit', 'xml'],
                                    required=True)
    lp.add_argument("-c", "--cleanup", dest="cleanup", type=str, default=None,
                    choices=['yes', 'no'],
                                    required=True)
    lp.set_defaults(action='random')

    # Inter API perturbation
    intp = subparsers.add_parser('inter', help='Inter API Insertion', add_help=False)
    intp.add_argument("-a", "--apiname", dest="api", type=str, default=None,
                                    choices=['android', 'java', 'javax', 'apache'
                                    , 'json', 'junit', 'xml'],
                                    required=True)
    intp.add_argument("-c", "--cleanup", dest="cleanup", type=str, default=None,
                    choices=['yes', 'no'],
                                    required=True)
    intp.set_defaults(action='inter')


    # list APIs
    rp = subparsers.add_parser('list', help='List APIs', add_help=False)
    rp.add_argument("-c", "--cleanup", dest="cleanup", type=str, default=None,
                    choices=['yes', 'no'],
                                    required=True)
    rp.add_argument("-ft", "--filter", dest="filter", type=str, default=None,
                    nargs=2, required=False)
    rp.set_defaults(action='list')

    #Modify APK\'s filename
    # package perturbation (dirname, classname)
    cp = subparsers.add_parser('package', help='Modify user-defined class/package name', add_help=False)
    cp.add_argument("-c", "--cleanup", dest="cleanup", type=str, default=None,
                    choices=['yes', 'no'], required=True)
    cp.set_defaults(action='package')

    # package perturbation (dirname, classname)
    fp = subparsers.add_parser('file', help='Modify APK\'s filename', add_help=False)
    """
    fp.add_argument("-a", "--apiname", dest="api", type=str, default=None,
                                    choices=['android', 'java', 'javax', 'apache'
                                    , 'json', 'junit', 'xml'],
                                    required=True)
    """
    fp.add_argument("-c", "--cleanup", dest="cleanup", type=str, default=None,
                    choices=['yes', 'no'], required=True)
    fp.set_defaults(action='file')

    # package perturbation (dirname, classname)
    per = subparsers.add_parser('permission', help='Remove all permissions', add_help=False)
    per.add_argument("-c", "--cleanup", dest="cleanup", type=str, default=None,
                    choices=['yes', 'no'], required=True)
    per.set_defaults(action='permission')

    # package perturbation (dirname, classname)
    bper = subparsers.add_parser('bpermission', help='Insert benign permissions', add_help=False)
    bper.add_argument("-c", "--cleanup", dest="cleanup", type=str, default=None,
                    choices=['yes', 'no'], required=True)
    bper.set_defaults(action='bpermission')

    # TODO
    # Precison perturbation
    ins = subparsers.add_parser('insert', help='Insert Perturbation', add_help=False)
    ins.add_argument("-n", "--num", dest="number", type=int, default=None,
                                    required=True)
    ins.add_argument("-a", "--apiname", dest="api", type=str, default=None,
                                    choices=['android', 'java', 'javax', 'apache',
                                     'json', 'junit', 'xml'],
                                    required=True)
    ins.add_argument("-c", "--cleanup", dest="cleanup", type=str, default=None,
                    choices=['yes', 'no'],
                                    required=True)
    ins.add_argument("-ft", "--filter", dest="filter", type=str, default=None,
                    nargs=2, required=True)
    ins.set_defaults(action='insert')

    # Parse the arguments
    args = parser.parse_args()

    # Do the right action
    if args.action == "random":
        print "Perturb this APK file"
        api = Api(args.apk_filename, args.api, args.number, args.cleanup)
        api.load_source(True)
        api.process_random()

    elif args.action == "inter":
        print "Perturb this APK file"
        api = Api(args.apk_filename, args.api, 1, args.cleanup)
        api.load_source(True)
        api.process_inter()

    elif args.action == "list":
        print "Print list of APIs"
        print args
        api = Api(args.apk_filename, "noname", 0, args.cleanup)
        api.load_source(False)
        if args.filter is not None:
            api.process_list(filter = args.filter)
        else:
            api.process_list(filter = None)

    elif args.action == "insert":
        api = Api(args.apk_filename, args.api, args.number, args.cleanup)
        api.load_source()
        api.read_registers(False)
        api.inject_code(startApi=args.filter[0], endApi=args.filter[1])

    elif args.action == "package":
        print "Modify user-defined class/package name"
        api = Api(args.apk_filename, "", 0, args.cleanup)
        api.load_source(True)
        api.method_perturbation()
        #exit()
        api.package_perturbation()

    elif args.action == "file":
        print "Modify APK's filename"
        #TODO : make separate function
        api = Api(args.apk_filename, "", 1, args.cleanup)
        api.load_source(True)
        #api.process_inter()
        api.file_perturbation()
        
    elif args.action == "permission":
        print "Remove all permissions from AnadroidManifest.xml"
        api = Api(args.apk_filename, "", 0, args.cleanup)
        api.load_source(True)
        api.permission_remove()

    elif args.action == "bpermission":
        print "Insert benign permissions to AnadroidManifest.xml"
        api = Api(args.apk_filename, "", 0, args.cleanup)
        api.load_source(True)
        api.permission_insert()
