#!/usr/bin/env python2


'''
REMOVE API for testing (now we are using reflection instead of this)

1. remove fraction of apis
ex) python rmapi.py -f test.apk rm2 -fr 1 10 -c no

-f filename
rm : we want to remove part of apis
-fr location (ex: 1 10, first part of 1/10)
-c cleanup (yes: leave the extracted directory, no : remove dir after perturbation)

2. remove half & half apis
ex) python rmapi.py -f test.apk rm2 -e no -c no

-f filename
-c cleanup (yes: leave the extracted directory, no : remove dir after perturbation)
-e modify the even line or odd (yes or no)

3. remove all apis
ex) python rmapi.py -f test.apk rmall -c no
-f filename
-c cleanup (yes: leave the extracted directory, no : remove dir after perturbation)
'''

import xml.etree.ElementTree as ET
import os, sys
import fileinput
import argparse
import fnmatch, re
import math

from random import randint
from template_api import *
from StringIO import StringIO


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
    num = 0

    excludes = smali+"/android/"
    excludes = r'|'.join([fnmatch.translate(x) for x in excludes]) or r'$.'

    for root, dirs, files in os.walk(smali):

        for file in files:
            #if file.startswith(fname) and file.endswith(".smali"):
            if file.endswith(".smali"):

                if "android" not in root:
                    num = num + 1
                    #path = root+"/"
                    path = root
                    smali_path.append(path.replace(smali, ''))
                    smali_file.append(file)
                    continue
    return smali_path, smali_file, num

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

        self.smali_file = []
        self.smali_filename = []
        self.smali_path = []
        self.file_num = 0

        self.already_modified = {}
        self.invoke_local_arr = []
        self.local_num_arr = []

        self.precison_list = []

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
            self.smali_path, self.smali_filename, self.file_num = \
                self.find_smalifiles(self.smali_file, self.smali)
        else:
            self.smali_path, self.smali_filename, self.file_num = \
                scan_smali_all(self.smali)

    def read_con(self, current_file, index):
        current_con = ""

        if os.path.exists(current_file+'.smali'):
                current_con = open(current_file+'.smali').read()            #read file => lines

        else:
            for file in os.listdir("./"):
                #print self.smali_filename
                if file.endswith(self.smali_filename[index]+".smali"):
                    current_con = open(file+'.smali').read()

        return current_con

    def read_con_lines(sellf, current_file, index):
        if os.path.exists(current_file+'.smali'):
                current_con = open(current_file+'.smali').readlines()            #read file => lines

        else:
            for file in os.listdir("./"):
                if file.endswith(self.smali_filename[index]+".smali"):
                    current_con = open(file+'.smali').readlines()

        return current_con

    def ret_file_from_idx(self, index):
        current_file = self.smali_path[index] + self.smali_filename[index]    #full path
        return current_file

    def process_list(self, filter):
        #debug here
        for index in range(0, len(self.smali_path)):

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
                        print str(line_num)+":"+self.smali_filename[index]+":"+line.strip()
                    else:
                        if filter[0] in previous_invoke and filter[1] in line:
                            print "Printing %s %s" % (filter[0], filter[1])
                            print str(previous_line_num)+":"+self.smali_filename[index]+":"+previous_invoke.strip()
                            print str(line_num)+":"+self.smali_filename[index]+":"+line.strip()
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

    def inj_code_chunk(self, chunk, current_local, increase):
        lines_chunk = ret_lined_list(chunk)
        already_modified = alreadyModified(chunk)

        #print already_modified

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

    def process_random(self):
        #debug here
        file_index = randint(0,len(self.smali_path))
        filename = self.ret_file_from_idx(file_index)
        smali_code = self.read_con(filename, file_index)
        func_array = smali_code.split('.method')

        chunk_array = []
        target_num = self.ret_target_chunk(func_array)

        # modify
        local = get_locals(func_array[target_num])
        inj_chunk = self.inj_code_chunk(func_array[target_num], local, 1)

        index = 0
        for chunk in func_array:
            if index is not target_num:
                chunk_array.append(chunk)
            else:
                #print "here"
                print index
                print inj_chunk
                exit()
                chunk_array.append(inj_chunk)
            index = index + 1

        output = '\n.method'.join([str(x) for x in chunk_array])

        ofile = open(filename+'.smali', 'w')
        ofile.write(output)
        ofile.close()

        print "[*] Done random insertion to %s.smali" % filename

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
                        local_val = int(line.split('locals ')[1])     # store maximum registers for each method
                        local_num[line_num] = local_val    # what is current .locals value? (at this line)

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
            self.file_num = randint(1,len(self.smali_path))    # randomly choose file to perturb => select file
            invoke_len =    len(self.invoke_local_arr[len(self.smali_path)-1])    # of places for inserting code
            rand_line_num = randint(0,invoke_len)    # select random place in file
            perturbation = self.invoke_local_arr[len(self.smali_path)-1].keys()[rand_line_num-1] # get exact line number
            loc_line_num = self.invoke_local_arr[len(self.smali_path)-1][perturbation]    # line of .locals, we should increse 1
            max_locals = self.local_num_arr[len(self.smali_path)-1][loc_line_num]         # current max locals, we will use "max+1"

            return perturbation, loc_line_num, max_locals

        else:
            print "here"

    def modify_max_register(self, loc_line_num, max_locals):
        print "[*] find and modify maximum registers"
        count = 0
        for index in range(0, self.file_num):
            #print current_file
            current_file =    self.smali_path[index] + self.smali_filename[index] + ".smali"

            for line in fileinput.input(current_file, inplace=1):
                count = count+1
                if count == loc_line_num and self.already_modified[count] == False:
                    #print "[*] changing line => increase maximum number of registers"
                    line = line.replace(str(max_locals),str(max_locals+1))    #should modify this!!!!
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
        perturbation, loc_line_num, max_locals = self.decide_perturbation(startApi, endApi)
        print self.precison_list
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

    def ret_fullpath(self, target, path, filename):
        if '/' in path:
            filename = target + '/smali/' + path + '/'+ filename
        else:
            filename = target + '/smali' + path + '/'+ filename
        return filename

    def isClassModifiable(self,line, wordlist):
        if 'L' in line and '/' in line:
            for item in wordlist:
                if 'L'+item in line or '/'+item in line:
                    return True
        return False

    def isXMLModifiable(self, line, wordlist):
        if 'package=' in line or 'android:name' in line:
            for item in wordlist:
                if "\""+item in line or "."+item in line:
                    return True
        return False

    def replaceClassname(self, line, wordlist):
        for item in wordlist:
            line = line.replace('L'+item, 'L'+wordlist[item])
            line = line.replace('/'+item, '/'+wordlist[item])
            line = line.replace(item+'/', wordlist[item]+'/')
        return line

    def replaceClass_from_XML(self, line, wordlist):
        for item in wordlist:
            line = line.replace('\"'+item, '\"'+wordlist[item])
            line = line.replace('.'+item, '.'+wordlist[item])
        return line

    def mod_manifest(self, target, wordlist):
        print "[*] Modifying AndroidManifest.xml file"
        for line in fileinput.input(target+'/AndroidManifest.xml', inplace=1):
            if self.isXMLModifiable(line, wordlist):
                line =  self.replaceClass_from_XML(line, wordlist)
            sys.stdout.write(line)
        fileinput.close()

    def mod_class(self, filename, wordlist):
        print "[*] Modifying each smali file (classname)"
        for line in fileinput.input(filename, inplace=1):
            if self.isClassModifiable(line, wordlist):
                line = self.replaceClassname(line, wordlist)
            sys.stdout.write(line)
        fileinput.close()

    def scan_modify_class(self, target, wordlist):
        self.mod_manifest(self.target, wordlist)
        for i in range(0,len(self.smali_path)):
            filename = self.ret_fullpath(self.target, self.smali_path[i], self.smali_filename[i])
            self.mod_class(filename, wordlist)

    def rename_dir(self, target, wordlist):
        print "[*] Renaming dirname"

        path = target + '/smali/'
        sub = []
        for x in range(0, len(wordlist) * 3):
            for root, dirnames, filenames in os.walk(path):
                for subdirname in dirnames:
                    if subdirname in wordlist:
                        old = os.path.join(root, subdirname)
                        new = os.path.join(root, wordlist[subdirname])
                        os.rename(old, new)

    def rename_file(self, target):
        print "[*] Changing smali filename and its class"

    def package_perturbation(self):
        print "[*] Package/Class name perturbation"
        #oldPackage, newPackage = mod_name_manifest(self.target)
        dirlist = enum_dirs(self.target)
        random_word_list = ret_random(dirlist)
        print random_word_list
        self.rename_file(self.target)
        self.scan_modify_class(self.target, random_word_list)
        self.rename_dir(self.target, random_word_list)
        self.cleanUp(self.cleanup)

    def read_con2(self, filename):
        return open(filename, 'r').read()

    def ret_num_of_chunks(self):
        chunk_count = 0
        for index in range(0,len(self.smali_path)):
            filename = self.ret_fullpath(self.target, self.smali_path[index], self.smali_filename[index])
            #print self.smali_filename
            #print filename
            current_con = self.read_con2(filename)
            chunk_count = chunk_count + len(current_con.split('.method'))

        return chunk_count

    def ret_process_boundary(self, total, start, end):

        if start +1 == end:
            tempSize = int(math.ceil(float(total) / float(end)))
            tempStart = int(math.ceil((float(total) / float(end) ) * float(start)))
            tempEnd = total

        else:
            tempSize = int(math.ceil(float(total) / float(end)))
            tempStart = int(math.ceil((float(total) / float(end) ) * float(start)))
            tempEnd = tempStart + tempSize

        return tempStart, tempEnd

    # TODO : modify by chunk
    def remove_apis_chunk(self, cStart, cEnd):
        chunk_count = 0
        for index in range(0,len(self.smali_path)):
            filename = self.ret_fullpath(self.target, self.smali_path[index], self.smali_filename[index])
            current_con = self.read_con2(filename)
            current_chunk_len = len(current_con.split('.method'))

            if chunk_count + current_chunk_len > cStart:
                print ""

    def null_insertion(self, line):
        reg =  line.strip().split(' ')[1]
        #return "    const/4 " + reg + ", 0x0"
        return "    const/4 " + "v0" + ", 0x0"

    def remove_apis(self, index):
        print "[*] Modifying each smali file (classname)"
        filename = self.ret_fullpath(self.target, self.smali_path[index], self.smali_filename[index])

        '''
        fileline = open(filename, 'r').readlines()
        for line in fileline:
            if 'move-result' in line:
                print self.null_insertion(line)
                exit()
        '''

        for line in fileinput.input(filename, inplace=1):
            #if self.isClassModifiable(line, wordlist):
            if "invoke-" in line:
                #line = "#" + line
                line = ""
            elif "move-result" in line:
                #line = "#" + line + "\n" + self.null_insertion(line)
                line = "\n" + self.null_insertion(line)
            sys.stdout.write(line)
        fileinput.close()

    def ret_even_odd(self, even):
        if even == 'yes' or even == 'Yes':
            return True
        elif even == 'no' or even == 'No':
            return False
        return None

    def flip_flag(self, even):
        if even is True:
            return False
        elif even is False :
            return True

    def remove_apiline(self, index, even):
        #print self.ret_even_odd(even)
        flag = self.ret_even_odd(even)

        print "[*] Modifying each smali file (classname)"
        filename = self.ret_fullpath(self.target, self.smali_path[index], self.smali_filename[index])

        for line in fileinput.input(filename, inplace=1):
            #if self.isClassModifiable(line, wordlist):

            if "invoke-" in line and flag is True:
                flag = self.flip_flag(flag)
            elif "invoke-" in line and flag is False:
                flag = self.flip_flag(flag)
            elif "move-result" in line:
                line = "\n" + self.null_insertion(line)
            sys.stdout.write(line)
        fileinput.close()


    def remove_apis_file(self, cStart, cEnd):
        for index in xrange(cStart, cEnd, 1):
            #print self.smali_filename[x]
            self.remove_apis(index)

    def remove_half_lines(self, even):
        for index in xrange(0, len(self.smali_path)-1):
            self.remove_apiline(index, even)

    def scan_all_chunks(self, filter):
        cNum = int(filter[0])
        pNum = int(filter[1])
        totalChunkNum =  self.ret_num_of_chunks()
        totalFileNum = len(self.smali_path)

        cStart, cEnd = self.ret_process_boundary(totalFileNum, cNum-1, pNum)
        self.remove_apis_file(cStart, cEnd)

    def scan_by_even(self, even):
        totalChunkNum =  self.ret_num_of_chunks()
        totalFileNum = len(self.smali_path)

        self.remove_half_lines(even)

    def process_rm(self, filter):
        childNum = int(filter[0])
        parentNum = int(filter[1])
        self.scan_all_chunks(filter)

    def process_rm2(self, even):
        self.scan_by_even(even)

    def remove_allapi(self, index):
        print "[*] Modifying each smali file (classname)"
        filename = self.ret_fullpath(self.target, self.smali_path[index], self.smali_filename[index])

        for line in fileinput.input(filename, inplace=1):
            if "invoke-" in line:
                #line = ""
                line = "nop\n"
            elif "move-result" in line:
                line = "\n" + self.null_insertion(line)
            sys.stdout.write(line)
        fileinput.close()

    def remove_half_lines(self, even):
        for index in xrange(0, len(self.smali_path)-1):
            self.remove_apiline(index, even)

    def process_rmall(self):
        for index in xrange(0, len(self.smali_path)):
            self.remove_allapi(index)


if __name__ == "__main__":

    parser = argparse.ArgumentParser()

    #parser.add_argument("-v", action='store_true')
    parser.add_argument("-f", "--file", dest="apk_filename", type=str,
                                 default=None, help="This is the name of APK")

    # Create the subparser group
    subparsers = parser.add_subparsers(title='arguments')


    # TODO
    # remove fraction of APIs
    rms = subparsers.add_parser('rm', help='Remove APIs', add_help=False)
    rms.add_argument("-c", "--cleanup", dest="cleanup", type=str, default=None,
                    choices=['yes', 'no'], required=True)
    rms.add_argument("-fr", "--fraction", dest="filter", type=str, default=None,
                    nargs=2, required=True)
    rms.set_defaults(action='rm')

    # scan 1 to 1 removal
    rms = subparsers.add_parser('rm2', help='Remove APIs by scan lines mode', add_help=False)
    rms.add_argument("-c", "--cleanup", dest="cleanup", type=str, default=None,
                    choices=['yes', 'no'], required=True)
    rms.add_argument("-e", "--even", dest="even", type=str, default=None,
                    choices=['yes', 'no'], required=True)
    rms.set_defaults(action='rm2')

    # Remove all
    rms = subparsers.add_parser('rmall', help='Remove all APIs', add_help=False)
    rms.add_argument("-c", "--cleanup", dest="cleanup", type=str, default=None,
                    choices=['yes', 'no'], required=True)
    rms.set_defaults(action='rmall')


    # Parse the arguments
    args = parser.parse_args()
    #print args

    if args.action == "rm":
        print "Remove APIs"
        print args
        api = Api(args.apk_filename, "", 0, args.cleanup)
        api.load_source(True)  # true = find all smal files
        api.process_rm(filter = args.filter)

    elif args.action == "rm2":
        print "Remove half APIs"
        print args
        api = Api(args.apk_filename, "", 0, args.cleanup)
        api.load_source(True)  # true = find all smal files
        api.process_rm2(even = args.even)

    elif args.action == "rmall":
        print "Remove all APIs"
        print args
        api = Api(args.apk_filename, "", 0, args.cleanup)
        api.load_source(True)  # true = find all smal files
        api.process_rmall()

    elif args.action == "insert":
        api = Api(args.apk_filename, args.api, args.number, args.cleanup)
        api.load_source()
        api.read_registers(False)
        api.inject_code(startApi=args.filter[0], endApi=args.filter[1])

    elif args.action == "package":
        print "Modify user-defined class/package name"

        api = Api(args.apk_filename, "", 0, args.cleanup)
        api.load_source(True)
        api.package_perturbation()
