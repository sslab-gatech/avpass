#!/usr/bin/env python2

"""
package and class/method obfuscator

Change package name
ex) python pcm.py -f test2.apk package -c no
-f filename
-c cleanup (yes: leave the extracted directory, no : remove dir after obfuscation)

Insert nullbytes between smali instructions
ex) python pcm.py -f test2.apk insbyte -c no
-f filename
-c cleanup (yes: leave the extracted directory, no : remove dir after obfuscation)
"""

import xml.etree.ElementTree as ET
import os, sys, string, shutil
import fileinput, argparse
import fnmatch, re
import logging
from random import randint

sys.path.append('./modules')
from conf import *
from pcmutil import *
from common import *

class PCM(object):

    def __init__(self, apk, want_cleanup):
        self.target = apk.split('.')[0]
        self.smali = self.target + "/smali"
        self.output_name = self.target + '_pert.apk'
        self.cleanup = want_cleanup
        self.packname = ""

        self.smali_filename = []
        self.smali_path = []
        self.caesar_file = []

        self.class_list = []
        self.method_list = {}
        self.class_to_super = {}
        self.field_list = []

    def check_classname_exist(self, classname):
        """
        Check whether specific classname exists in classlist
            - the class_list is scanned at the initial stage
        """

        if classname in self.class_list:
            return True
        return False

    def check_classname_startswith(self, classname):
        """
        Check whether specific classname startswith (not necessary to be same)
        """
        out = False
        if classname == 'android':
            return False

        for item in self.class_list:
            if item.startswith(classname):
                out = True
        return out


    def mod_line_class(self, line):
        "Modify class names between L; => [contents]"

        """
        corner case1) 
         iput-object v0, p0, Lcom/and/snd/AirHornSoundService;
           ->noteThread:Lcom/and/snd/AirHornSoundService$NoteThread;
         iput-object v0, p0, Lqcn/obr/gbr/OwfVcfbGcibrGsfjwqs;
           ->bchsHvfsor:Lqcn/obr/gbr/OwfVcfbGcibrGsfjwqs$NoteThread;
        """

        names = find_classname_from_line(line)

        for i in range(len(names)):
            if self.check_classname_exist(names[i]) is True:

                # Handling resource-smali file reference case
                # e.g., classname/R$something
                if '/R$' in names[i] or names[i].endswith('/R'):
                    temp = names[i].split('/R')[0]
                    newname = rot13(temp)
                    line = line.replace('L'+temp+'/R', \
                                        'L'+newname+'/R')

                    # handling double reference case
                # e.g., "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
                #elif '' in line:                
                #    pass

                else:
                    newname = rot13(names[i])
                    line = line.replace('L'+names[i]+';', 'L'+newname+';')

                    #if 'obrfcwr/giddcfh/j7/odd/OddQcndohOqhwjwhm' in line:
                    #android/support/v7/app/AppCompatActivity
                    #logging.info(names)

        return line

    def mod_line_class_for_rfile(self, line):
        """
        Modify class names except for real classnames
          ex) synteo/spysat/R$layout => gmbhsc/gdmgoh/R$layout
        """
        names = find_classname_from_line(line)[0]

        if names.endswith('/R'):
            names = names[:-2]
        else:
            names = names.split('/R$')[0]

        if self.check_classname_exist(names) is True:
            newname = rot13(names)
            line = line.replace(names+';', newname+';')
        return line


    def ret_pack_and_original(self, andname, package_name):
        """
        Return classname with package_name
            1) if full-path : just return
            2) if relative path : package + andname        
        """

        package_name = package_name.replace('.','/')

        path_case1 = package_name + "/" + andname.replace('.','/')
        path_case1 = path_case1.replace('//','/')

        if path_case1 in self.class_list:
            return path_case1

        path_case2 = andname.replace('.','/')

        if path_case2 in self.class_list:
            return path_case2

        return None

    def process_xml_class_reference(self, line):
        "if line contain classname => encrypt"

        tag = ""

        # e.g., <com.itframework.base.widgets.AspectRatioHalfWidthImageView ...
        if '<' in line:
            tag = line.split('<')[1]
            if ' ' in tag:
                tag = tag.split(' ')[0]
        tag2 = tag.replace('.', '/')
        if self.check_classname_exist(tag2) is True:
            line = line.replace(tag, rot13(tag))

        # e.g., </com.virsir.android.chinamobile10086.CustomTabHost>
        if '</' in line:
            tag = line.split('</')[1]
            if '>' in tag:
                tag = tag.split('>')[0]
        tag2 = tag.replace('.', '/')
        if self.check_classname_exist(tag2) is True:
            line = line.replace(tag, rot13(tag))

            # e.g., xmlns:wiyun="http://schemas.android.com/apk/res/com.virsir.android.chinamobile10086">
        if 'xmlns' in line and 'res/' in line:
            classname = line.split('res/')[1]
            if '\"' in classname:
                classname = classname.split('\"')[0]
                classname2 = classname.replace('.', '/')
                if self.check_classname_startswith(classname2) is True:
                    line = line.replace("res/"+classname, \
                                        "res/"+rot13(classname))
                    #print line

        return line

    def xml_reference_changer(self):
        """
        Scan all xml files from res and change all class references
        e.g., <com.itframework.base.widgets.AspectRatioHalfWidthImageView ...
         => encrypted name

        e.g., xmlns:wiyun="http://schemas.android.com/apk/res/com.virsir.android.chinamobile10086">
         => encrypted name
        """
        filelist = load_filelist_with_extension(self.target+"/res/", "xml")
        #print filelist

        # process for each xml file
        for name in filelist:

            for line in fileinput.input(name, inplace=1):
                #target_file = open(name, 'r').readlines()
                #for line in target_file:
                line = self.process_xml_class_reference(line)
                sys.stdout.write(line)
            fileinput.close()

    def file_obfuscation(self):
        """
        File/dir name changer
        1. change file name (actually classname)
           - assume that internal definition and its reference are modified
        2. change dir name

        * should be carefull about extarnal library such as google compat
        """
        print "[*] File name obfuscation"

        # NEXT : strictly separate blacklist and other files
        # should take out android.support case
        # also should find other corner cases

        change_filename(self.smali_path, self.smali_filename, self.target, TEMP_DIR_NAME)
        change_dir(self.smali_path, self.target, TEMP_DIR_NAME)
        #self.change_Rfile()
        cleanUp(self.cleanup, self.target)

    def mod_manifest(self):
        """
        MODIFY androidmanifest.xml file

        1. modify main package name (package="com.a.b.c")
        2. modify components name: activity, service, &c
            1) find android:name='original'
            2) concat package_path + original
              - case1)   path + original
              - case1-1) path + original (with subdirectories)
              - case2)   original
            3) if class exist? modify 
        """

        print "[*] Modifying AndroidManifest.xml file"

        package_path = ret_package_path(self.target+'/AndroidManifest.xml', self.target)
        package_name = ret_package_name(self.target+'/AndroidManifest.xml', self.target)

        for line in fileinput.input(self.target+'/AndroidManifest.xml', inplace=1):
            #for line in open(self.target+'/AndroidManifest.xml','r').readlines():

            # 1. modify main package name
            if ' package=' in line:
                line = line.replace('package=\"'+package_name, \
                                    'package=\"'+rot13(package_name))

                # 2. modify components name
            elif 'android:name=' in line:
                and_name = ret_android_name(line)
                target_component = \
                    self.ret_pack_and_original(and_name, package_path)

                # 3. exist in class_list? then modify the name
                if target_component is not None:
                    line = line.replace(and_name, rot13(and_name))

            sys.stdout.write(line)
        fileinput.close()

    # need to optimize (execute only once)
    def is_method_public(self, method, classname):
        """
        check whether given method of classname is public 
         method : name of method 
         classname : e.g., spy/lifemonitor/com/LifemonitorActivity
        """

        #logging.info(classname)
        super_name = ""
        super_name_2 = ""
        super_name_3 = ""

        target1 = []
        target2 = []
        target3 = []
        target4 = []

        if classname in self.class_to_super.keys():
            super_name = self.class_to_super[classname]

        # MEMO: need nicer way to handle second parent and third
        if super_name in self.class_to_super.keys():
            super_name_2 = self.class_to_super[super_name]

        if super_name_2 in self.class_to_super.keys():
            super_name_3 = self.class_to_super[super_name_2]

        # MEMO: need nicer way to handle second parent and third
        if self.method_list.has_key(classname):
            target1 = self.method_list[classname]

        if self.method_list.has_key(super_name):
            target2 = self.method_list[super_name]

        if self.method_list.has_key(super_name_2):
            target3 = self.method_list[super_name_2]

        if self.method_list.has_key(super_name_3):
            target4 = self.method_list[super_name_3]

        target_class = target1 + target2 + target3 + target4

        #if method+":PUBLICCMETHOD" in target_class:
        if method+":ETCCMETHOD" not in target_class:
            return True

        return False

    def is_method_in_class(self, method, classname):
        "Check whether given method belongs to real class"

        #logging.info(classname)
        super_name = "noname"
        super_name_2 = "noname"
        super_name_3 = "noname"

        target1 = []
        target2 = []
        target3 = []
        target4 = []

        if classname in self.class_to_super.keys():
            super_name = self.class_to_super[classname]
            #   logging.info("super:"+super_name)

        # MEMO: need nicer way to handle second parent and third
        if super_name in self.class_to_super.keys():
            super_name_2 = self.class_to_super[super_name]

        if super_name_2 in self.class_to_super.keys():
            super_name_3 = self.class_to_super[super_name_2]

        #Query original class and super class
        # NOTE: temporal change!!!
        #if not self.method_list.has_key(classname) and \
        #    not self.method_list.has_key(super_name):            
        #    return False

        if self.method_list.has_key(classname):
            target1 = self.method_list[classname]

        if self.method_list.has_key(super_name):
            target2 = self.method_list[super_name]

            # MEMO: need nicer way to handle second parent and third
        if self.method_list.has_key(super_name_2):
            target3 = self.method_list[super_name_2]

        if self.method_list.has_key(super_name_3):
            target4 = self.method_list[super_name_3]

        target_class = target1 + target2 + target3 + target4

        #logging.info(target_class)
        #logging.info(method)
        #logging.info("\n")
        if method+":PUBLICCMETHOD" in target_class or \
                                method+":ETCCMETHOD" in target_class:
            return True

        return False

    def method_obfuscation(self):
        """
    	Method name obfuscation in invoke-families and fields
    	   ->function() ==> ->encrypt()
    	   Lclass; => Lencrypt;
    	   field: => encrypt_field:

        [invoke pattern handling]
            1. check -> 
            2. change method name()
              1) if method name belongs to classname_list : change
              2) if method name belongs to API : not change
            3. change refered field name()
              1) skip R.class now
                - affect layout, ids, public, class's local "definition"
              2) change others
                - iget-boolean v0, p0, Lcn/smstelphoneapp/service/STAService;->g:Z
                 => ->enc:Z
            4. change class name()
            * MEMO- A:class (field A from class)
        [method pattern handling]
        [field definition handling]
        [etc pattern handling]
        """

        print "[*] Method name obfuscation"

        for index in range(len(self.smali_path)):
            full_path = ret_fullpath(self.target, self.smali_path[index], \
                                     self.smali_filename[index])
            only_filename = self.smali_filename[index]
            #logging.info(only_filename)

            for line in fileinput.input(full_path, inplace=1):
                #for line in open(full_path,'r').readlines():
                changed = False

                "invoke_pattern change ->"
                # 1. check ->
                if ";->" in line:

                    left_class_name = ret_class_from_method_call(line, first=True)

                    # 2.1 - if class exist in scanned class list:
                    if self.check_classname_exist(left_class_name) == True:

                        # 2.2 - if method name belong to original class => mod
                        #logging.info(extract_method_name(line))
                        #logging.info(line.strip())                        
                        if self.is_method_in_class(extract_method_name(line), \
                                                   left_class_name):
                            line = mod_method_call_name(line).rstrip()+"\n"

                    # 3 - change referred field name()
                    if ':' in line:
                        left_class_name = ret_class_from_method_call(line, first=True)
                        #print "debug:"+left_class_name
                        if self.check_classname_exist(left_class_name) == True:

                            line = mod_field_reference(line)

                    # 4 - change classname()
                    line = self.mod_line_class(line)

                    # MEMO for test
                    sys.stdout.write(line)
                    continue

                elif is_method_pattern(line):
                    ".method pattern change, execpt for blacklist_functions"
                    #logging.info(line.strip())
                    line = mod_method_define_name(line)+"\n"
                    line = self.mod_line_class(line)
                    #logging.info(line)

                    # MEMO for test
                    sys.stdout.write(line)
                    continue

                # .field definition pattern?
                elif '.field ' in line:
                    "find field definition section"

                    # TODO : have to handle corner case with double LL
                    # e.g., .field public static final IAB_LEADERBOARD:Lcom/google/ads/AdSize;
                    # L1234:Lcom/a/a/c; => what is between L~; ?

                    line = mod_field_define_name(line)
                    if ':' in line:
                        first = line.split(':')[0]
                        second = line.split(':')[1:]
                        second = ''.join(second)

                        line = first + ":" + self.mod_line_class(second)

                    # MEMO for test
                    sys.stdout.write(line)
                    continue

                elif 'const-string ' in line:
                    reg, string = ret_string_reg(line)

                    if is_fieldname_in_blacklist(string):
                        sys.stdout.write(line)
                        continue

                    if string in self.field_list:
                        if '/' in line:
                            line = line.replace("\""+string+"\"", "\""+rot13(string)+"\"")
                        else:
                            line = line.replace("\""+string+"\"", "\""+replace_upper_L(rot13(string))+"\"")
                    sys.stdout.write(line)
                    continue

                    #elif is_class_reference(line):
                    """
                    Just using class instance => should handle
                       ex) const-class v1, Lcn/smstelphoneapp/service/STAService
                       this handles: .class definition and const-class...
                    """
                    #line = self.mod_line_class(line)

                    #print "debug:class_reference"
                    #if 'obrfcwr/giddcfh/j7/odd/OddQcndohOqhwjwhm' in line:
                    #    logging.info('HERE')

                line = self.mod_line_class(line)
                sys.stdout.write(line)
            fileinput.close()

    def package_obfuscation(self):
        "Previous version: package obfuscation method"

        print "Package/Class name obfuscation"

        #just modify AndroidManifest.xml and change the directory's name
        self.packname = self.mod_manifest(self.target, True)
        self.rename_dir(self.target)
        cleanUp(self.cleanup, self.target)

    def resource_preparation(self):
        "Modify R-files for the following resource obfuscations"
        print "[*] Resource obfuscation preparation"

    def scan_names(self):
        self.class_list, self.method_list, self.class_to_super, self.field_list = \
            scan_class_names(self.target, self.smali_path, self.smali_filename)

    def load_source(self):
        "Load smalifile list"

        extract_smali(self.target)
        #logging.info("METHOD:Loading Smali files list", extra={ 'tag' : {} })
        print "[*] Loading Smali files list"
        self.smali_path, self.smali_filename, self.caesar_file, num = \
            scan_smali_all(self.smali)

    def insert_bytes(self, length=1):
        """
        Insert nop operation between two instructions
        """
        #print length

        for index in range(len(self.smali_path)):
            full_path = ret_fullpath(self.target, self.smali_path[index], \
                                     self.smali_filename[index])
            only_filename = self.smali_filename[index]

            inside_method = False

            for line in fileinput.input(full_path, inplace=1):
                #for line in open(full_path,'r').readlines():

                if (line.startswith('.method') and 'abstract' not in line) \
                        or '.end array-data' in line:
                    inside_method = True

                if line.startswith('.end method') or '.sparse-switch' in line \
                        or '.annotation ' in line or '.packed-switch' in line \
                        or '.array-data' in line:
                    inside_method = False

                if '.param ' in line:
                    sys.stdout.write(line)
                    continue

                if inside_method == True:
                    line = line + "nop\n"

                sys.stdout.write(line)
            fileinput.close()

    def copy_benign(self):
        print "[*] Copying benign classes into application"
        #print self.target
        #print BENIGN_CLASS_DIR
        if not os.path.exists(self.target+"/smali/android/support"):
            shutil.copytree(BENIGN_CLASS_DIR+"/android", self.target+"/smali/android")

if __name__ == "__main__":

    #define parser
    parser = argparse.ArgumentParser()
    parser.add_argument("-f", "--file", dest="apk_filename", type=str,
                        default=None, help="This is the name of APK")

    subparsers = parser.add_subparsers(title='arguments')

    # modify package/class
    cp = subparsers.add_parser('package', help='Modify user-defined \
    	class/package name', add_help=False)
    cp.add_argument("-c", "--cleanup", dest="cleanup", type=str, default=None,
                    choices=['yes', 'no'], required=True)
    cp.set_defaults(action='package')

    # insert dummy-byte
    ins = subparsers.add_parser('insbyte', help='Insert dummy bytes', \
                                add_help=False)
    ins.add_argument("-c", "--cleanup", dest="cleanup", type=str, default=None,
                     choices=['yes', 'no'], required=True)
    ins.set_defaults(action='insbyte')

    # insert dummy-byte
    bc = subparsers.add_parser('bclass', help='Insert benign classes', \
                               add_help=False)
    bc.add_argument("-c", "--cleanup", dest="cleanup", type=str, default=None,
                    choices=['yes', 'no'], required=True)
    bc.set_defaults(action='bclass')

    # Parse the arguments
    args = parser.parse_args()

    if args.action == "package":
        "Package/class/filename/field information changer"

        print "Modify user-defined class/package name"
        pcm = PCM(args.apk_filename, args.cleanup)
        pcm.load_source()
        pcm.scan_names()

        pcm.method_obfuscation()
        pcm.mod_manifest()
        pcm.file_obfuscation()
        pcm.xml_reference_changer()

    elif args.action == "insbyte":
        "Insert dummy byte between all instructions to break pattern match"

        print "[*] Insert dummy bytes between all instructions"

        pcm = PCM(args.apk_filename, args.cleanup)
        pcm.load_source()
        pcm.insert_bytes(length = 1)
        cleanUp(pcm.cleanup, pcm.target)

    elif args.action == "bclass":
        pcm = PCM(args.apk_filename, args.cleanup)
        pcm.load_source()
        pcm.copy_benign()

"""
TODO: Vdloader.apk 
cfu/qcqcg2r/hmdsg/QUFsqh.smali:
.method public static nolL(Lorg/cocos2d/types/CGRect;)F
"""
