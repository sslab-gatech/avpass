#!/usr/bin/env python2

'''
String and Variable encryption

1. string obfuscation
ex) python strp.py -f netr.apk string -c yes
-f filename
-c cleanup (yes: leave the extracted directory, 
            no : remove dir after obfuscation)

2. variable obfuscation
ex) python strp.py -f netr.apk variable -c yes
-f filename
-c cleanup (yes: leave the extracted directory, 
            no : remove dir after obfuscation)
'''

from random import randint
from StringIO import StringIO
import xml.etree.ElementTree as ET
import os, sys
import fileinput
import argparse
import fnmatch, re
import string

sys.path.append('./modules')
from conf import *
import smali_tool
from common import *
from strputil import *
from template_api import *


def array_to_string(arr, delimit):
    "RETURN item in array to string"

    output = delimit.join([str(x) for x in arr])
    return output

# TODO. what if string already obfuscated? we can't change name correctly
def obfuscate_assets_names():
    """
    1. change assets files
    2. change strings referencing
    """
    pass


def mod_name_manifest(filename):
    "Modify AndroidManifest.xml file by user request"

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

def variable_mod_chunk(chunk):
    "Modify any variable in chunk"

    lines_chunk = ret_lined_list(chunk)

    output = ""
    should_modify = False
    for line in lines_chunk:
        if ".source " in line or ".param " in line or ".local " in line \
            or ".end local" in line or "name =" in line :

            line =  caesar_str(line)
            should_modify = True
        output = output + line +"\n"

    return output, should_modify


def scan_smali_all(smali):
    "scan smali files and return list"

    smali_path = []
    smali_file = []
    caesar_file = []
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

# TODO. scan_smali and others
# what if target application uses package starts with android?

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

def return_local(line):
    "return number of locals"

    return int(line.split('locals ')[1])


def get_locals(chunk):
    "return maximum registers"

    lines_chunk = ret_lined_list(chunk)
    for line in lines_chunk:
        if ".locals" in line:
            return return_local(line)

def null_string_chunk(chunk):
    "Nullify all string in chunk"

    lines_chunk = ret_lined_list(chunk)

    output = ""
    for line in lines_chunk:
        if "const-string" in line:
            line =  null_str(line)+"\n"  # base64
        output = output + line +"\n"
    return output


class Strp(object):

    def __init__(self, apk, api_name, per_num, wantCleanup):
        self.target = apk.split('.')[0]
        self.smali = self.target + "/smali"
        self.tree = ""
        self.root = ""
        self.output_name = self.target + '_pert.apk'
        self.should_cleanup = wantCleanup

        self.smali_file = []
        self.smali_filename = []
        self.smali_path = []

        self.keys = []
        self.current_key = 0

        self.assets_filename = None

    def gen_encryptor(self, num_encryptor):
        """
        Generate number of encryptor with different keys
        """

        package_name = ret_package_name(self.target+'/AndroidManifest.xml', self.target)
        enc_filename = package_name.split('.')[len(package_name.split('.'))-1]
        package_dir = self.smali + "/" + package_name.replace(".", "/") + "/"

        self.keys = random_string_arr(num_encryptor)
        encryptors = gen_classnames(package_dir, enc_filename, \
            num_encryptor, CLASS_POSTFIX)

        gen_enc_class_files(encryptors, self.keys)

    def process_asset(self):        
        self.assets_filename = load_filelist_from_dir(self.target+"/assets")
        #print self.assets_filename
        obfuscate_assets_names()   

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
    
    def cleanUp(self, should_cleanup):
        if should_cleanup == "yes" or should_cleanup == "Yes":
            print "[*] Packing APK..."
            os.system('tools/apktool b '+self.target+ " -o " + self.target + "_out.apk")
            os.system("rm -rf "+self.target)
            print "[*] Everything done now"
        else:
            print "[*] Everything done now"

    def string_enc_base(self):
        "Encrypt string using base64"

        print "[*] Start string encoding (base64)"
        count = 0
        for index in range(0, len(self.smali_filename)):
            current_con = self.read_content(index)
            current_file = self.smali_path[index] +"/"+ self.smali_filename[index]    #full path

            if process_string(self.smali, current_file) is True:
                count = count + 1
        print "[*] Done processing %d files => modified %d files" % (len(self.smali_filename), count)

        self.cleanUp(self.should_cleanup)

    def field_encryption(self):
        """
        Encrypt field /java/lang/String "defined"
         and its reference
        e.g., .field public static final SENDER_ID:Ljava/lang/String; = "softotest@gmail.com"
        """
        pass

    def string_enc_all(self):
        """
        Encrypt string using xor-string encryptor different for each string.
        We do this by inserting massive number of getStr() functions
         => benefit: we don't need to insert any register

        """
        print "[*] Start string encoding (all different encryption)"
        count = 0
        for index in range(0, len(self.smali_filename)):
            current_con = self.read_content(index)
            current_file = self.smali_path[index] +"/"+ self.smali_filename[index]    #full path

            if process_string_all(self.smali, current_file, \
                self.assets_filename, BLACKLIST_STRING) is True:
                count = count + 1
        print "[*] Done processing %d files => modified %d files" % (len(self.smali_filename), count)
        self.cleanUp(self.should_cleanup)

    def process_variable(self, filename):
        "Encrypt variables in file"

        smali_file = open(filename,'r')
        smali_code = smali_file.read()
        func_array = smali_code.split('.method')

        mark = False
        chunk_array = []
        for chunk in func_array:
            chunk2, should_modify = variable_mod_chunk(chunk)
            if should_modify is True:
                mark = True
            chunk_array.append(chunk2)

        output = '\n.method'.join([str(x) for x in chunk_array])
        ofile = open(filename, 'w')
        ofile.write(output)
        ofile.close()
        return mark

    # variables including .field
    def variable_enc_caesar(self):
        "Variable encryption using caesar"

        print "[*] Start variable encryption (simple caesar)"
        count = 0
        #print len(self.smali_filename)

        for index in range(0, len(self.smali_filename)):
            current_con = self.read_content(index)
            current_file = self.smali+"/"+self.smali_path[index] +"/" + self.smali_filename[index]    #full path

            if self.process_variable(current_file) is True:
                count = count + 1
        print "[*] Done processing %d files => modified %d files" % (len(self.smali_filename), count)
        self.cleanUp(self.should_cleanup)


if __name__ == "__main__":

    parser = argparse.ArgumentParser()
    parser.add_argument("-f", "--file", dest="apk_filename", type=str,
                                 default=None, help="This is the name of APK")

    # Create the subparser group
    subparsers = parser.add_subparsers(title='arguments')

    # Random obfuscation
    sp = subparsers.add_parser('string', help='Random obfuscation', add_help=False)
    sp.add_argument("-c", "--cleanup", dest="cleanup", type=str, default=None,
                    choices=['yes', 'no'], required=True)
    sp.set_defaults(action='string')

    vp = subparsers.add_parser('variable', help='Variable Name obfuscation', add_help=False)
    vp.add_argument("-c", "--cleanup", dest="cleanup", type=str, default=None,
                    choices=['yes', 'no'], required=True)
    vp.set_defaults(action='variable')

    # Parse the arguments
    args = parser.parse_args()

    # Do the right action
    if args.action == "string":
        print "Perturb this APK file"

        strp = Strp(args.apk_filename, "", 0, args.cleanup)
        strp.load_source(True)
        #strp.string_enc_base()
        strp.process_asset()        
        strp.string_enc_all()
        strp.field_encryption()

    elif args.action == "variable":
        print "Change variable name"

        strp = Strp(args.apk_filename, "", 0, args.cleanup)
        strp.load_source(True)
        strp.variable_enc_caesar()
