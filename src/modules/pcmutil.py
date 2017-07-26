"""
Module for pcm(package, class, method, field) obfuscation
"""

import errno
import os, sys
import string
import re
import shutil
import logging

from common import *

FUNCTION_CALL = ['iget', 'invoke', 'iput', 'sget', 'sput', 'aget', 'aput']
BLACKLIST_METHOD = ['onCreate', 'onStart', 'onRestart', 'onResume',\
    'onPause', 'onStop', 'onDestroy', 'run', '<init>', '<clinit>']
BLACKLIST_PREFIX = ['on', 'do', 'access']
R_FILE = ['R.sm', 'R$']
BLACKLIST_DIR = ['/smali/android', '/smali/android/support',\
    '/smali/android/annotation']
BLACKLIST_FIELD = ['audio']
REPLACE_L = "JJJJJ"
PUBLIC = "PUBLICCMETHOD"
ETC = "ETCCMETHOD"

def make_dir(path):
    try:
        os.makedirs(path)
    except OSError as exception:
        if exception.errno != errno.EEXIST or not os.path.isdir(path):
            raise

def move_dir(target, prefix_str):
    """
    move to prefixed dir
    e.g., a.o ==> /smali/java/lang/a/o

    To ease problem, we don't consider child of android directory
    """

    print "[*] Moving Classes into %s" % prefix_str
    
    path = target + '/smali/'
    newpath = target + '/smali' + prefix_str
    change_candidate = os.walk(path).next()[1]
    make_dir(newpath)

    for name in change_candidate:
        if name is BLACKLIST_DIR[0]:
            continue
        shutil.move(path+name, newpath+name)

def read_manifest(target, root):
    "Track down manifest file"

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

def is_current_contains_blacklist_dir(dirname):
    "Is this dirname contains any blacklist dirname?"

    #print dirname
    out = False
    for item in BLACKLIST_DIR:
        if item in dirname:
            out = True
    return out

def is_startfrom_blacklist_filename(filename):
    "Is the filename starts from blacklist file? (e.g., R file)"

    out = False
    for item in R_FILE:
        if filename.startswith(item):
            out = True
    return out

def is_startfrom_blacklist_dirname(filename):
    "Is the dirname starts from blacklist file? (e.g., android.support)"

    out = False
    for item in BLACKLIST_DIR:
        if filename.startswith(item):
            out = True
    return out

def ret_field_name(line):
    "Return referred field name from line"

    line = line.split(':')[0]
    line = line.split(' ')[-1]
    return line

def ret_method_name(line):
    "Return method name from .method definition"

    if '(' in line:
        line = line.split('(')[0]
        length = len(line.split(' '))
        return line.split(' ')[length-1]
    return line

def scan_smali_all(smali):
    "Scan all smali files from /smali directory"

    smali_path = []
    smali_file = []
    caesar_file = []
    num = 0

    for root, dirs, files in os.walk(smali):
        for file in files:
            if file.endswith(".smali"):
                num = num + 1
                path = root
                smali_path.append(path.replace(smali, ''))
                caesar_file.append(ret_rot_filename(file).split('.')[0])
                smali_file.append(file)

    return smali_path, smali_file, caesar_file, num

def ret_fullpath(target, path, filename):
    "Return file's fullpath"

    if '/' in path:
        filename = target + '/smali/' + path + '/'+ filename
    else:
        filename = target + '/smali' + path + '/'+ filename

    filename = filename.replace('//','/')
    return filename

def filename_in_rfiles(RFILE, only_filename):
    "is the filename in blacklist?"

    for item in RFILE:
        if only_filename.startswith(item):
            return True
    return False

def function_call_exist(line):
    "Check whether given line has invoke-family instruction"

    for item in FUNCTION_CALL:
        if item in line:
            return True
    return False

def is_invoke_pattern(line):      
    """  
    Check whether given line is invoke
        find ->function(
        remove: onFunction, <init> <=== blacklist_method
    """

    if '->' in line and function_call_exist(line) == True:
        blacklist_exist = False
        for item in BLACKLIST_METHOD:
            if item in line:
                blacklist_exist = True
        if not blacklist_exist:
            return True

    return False

def is_class_reference(line):
    """
    Is this using class reference?
    note) assume that invoke, field, &c are already handled
    """

    if 'L' in line and ';' in line:
        return True
    return False

def is_method_pattern(line):
    "Is this invoke method?"

    blacklist_exist = False
    if '.method ' in line:
        for item in BLACKLIST_METHOD:
            if item in line:
                blacklist_exist = True
        if not blacklist_exist:
            return True
    return False

def ret_class_from_method_call(line, first=True):
    "Return class_name from invoke"
    
    if first == True:
        return_list = re.findall(r'(?<=L).*?(?=;)', line)[0]
    else:
        return_list = re.findall(r'(?<=L).*?(?=;)', line)
    return return_list

def is_contain_prefix(method_name):
    "Check whether name start with PREFIX"

    contain_prefix = False

    for item in BLACKLIST_PREFIX:
        if method_name.startswith(item):
            contain_prefix = True

    return contain_prefix

def mod_method_define_name(line):
    "Replace defined method name"

    method_name = ret_method_name(line)   
    if not is_contain_prefix(method_name): 
        return line.replace(method_name+'(', \
            replace_upper_L(rot13(method_name))+'(')
    return line

def is_fieldname_in_blacklist(fieldname):
    "if this field name defined in blacklist?"

    for item in BLACKLIST_FIELD:
        if item == fieldname:
            return True
    return False
    

def mod_field_define_name(line):
    """
    Change field name from line
        ex) .field private a: => .field private enc:
    """

    field_name = ret_field_name(line)

    if is_fieldname_in_blacklist(field_name):
        #logging.info("here")
        return line

    return line.replace(" "+field_name+":", \
        " "+replace_upper_L(rot13(field_name))+":")

def replace_upper_L(word):
    return word.replace('L', REPLACE_L)


def mod_method_call_name(line):
    """
    Replace method name(right hand
        e.g., ->method( ==> ->rot(method)( 
    """

    method_name = line.split('->')[1].split('(')[0]

    if method_name not in BLACKLIST_METHOD:
        if not is_contain_prefix(method_name):
            return line.replace("->"+method_name+"(", "->"\
                +replace_upper_L(rot13(method_name))+"(")
    return line

def mod_field_reference(line):
    """
    Replace field-name with encrypted one
        ex1) Lqb/gnghszdvcbsodd/gsfjwqs/s;->a:Lqb/gnghszdvcbsodd/p/q 
        ex2) ignore # getter for: Lru/getcorvin/mettir/Metrbing;->countsends:I
        ex3) A -> AB : we should modify only first one

    """
    line = line.replace(': ', '- ') #sanitizing comment case of ex2

    if ':' in line and ';->' in line:
        field_name = line.split(':')[0].split(';->')[1] 

        if is_fieldname_in_blacklist(field_name):
            return line
        line = line.replace(';->'+field_name+':', ';->'\
            +replace_upper_L(rot13(field_name))+':')
    
    return line

def ret_field_name(line):
    name = ""
    if ":" in line:
        temp = line.split(":")[0].split(' ')
        name = temp[len(temp)-1]
    return name

def scan_class_names(target, self_path, self_filename):
    "First, scan all .class names between L and ;"

    class_out = []
    method_out_dict = {}
    class_to_super = {}
    current_class = ""
    field_list = []

    for i in range(len(self_path)):
        fname = ret_fullpath(target, self_path[i], self_filename[i])
        fname_without_extension = self_filename[i].replace('.smali', '')

        fline = open(fname, 'r').readlines()
        method_out = []
        for line in fline:
            classname = ""
            if '.class ' in line and "\"" not in line:
                "Scan all class name"

                try:
                    classname = line.split(' L')[1].split(';')[0]
                except:
                    print line

                class_out.append(classname)
                current_class = classname

            if '.method ' in line  and "\"" not in line:
                "Store method for each class"
                "classname : [method list]"

                classname = self_path[i][1:] + "/"+self_filename[i]
                classname = classname.replace(".smali", "")

                if classname.startswith('/'):
                    classname = classname[1:] #remove first /

                methodname = ret_method_name(line)
                if ' public ' in line:
                    methodname = methodname+":"+PUBLIC
                else:
                    methodname = methodname+":"+ETC

                method_out.append(methodname)
                method_out_dict[classname] = method_out

            if '.super ' in line  and "\"" not in line:
                "handling super classes for correct method reference"

                super_name = line.split(' L')[1].split(';')[0]
                class_to_super[current_class] = super_name

            if '.field ' in line:
                """
                collect all field name (case of vdloader)
                storing field for encryption purpose 
                e.g., .field private orncpJwsk:Lqcn/uccuzs/org/OrJwsk;
                """

                name = ret_field_name(line)
                field_list.append(name)

    return class_out, method_out_dict, class_to_super, field_list

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


def extract_method_name(line):
    "Extract only method name from line"

    if '(' in line:
        temp = line.split(';->')[1]
        temp = temp.split('(')[0]
        return temp
    return ""


def ret_android_name(line):
    "For manipulating manifest file, return keyword after android:name"
    out = ""
    if 'android:name=\"' in line:
        out = line.split('android:name=\"')[1]
        out = out.split('\"')[0]
    return out

def change_Rfile(smali_path, smali_filename, target):
    "Handle R-files"

    print "Handling R-files"

    for index in range(0, len(smali_path)):
        only_filename = smali_filename[index]
        if only_filename.startswith('R.sm') or only_filename.startswith('R$'):
            current_file =  target + '/smali' + smali_path[index] + '/'\
            +smali_filename[index]

            #print " >> processing %s file" % only_filename
            handle_Rfile(current_file)


def make_dir(path):
    try:
        os.makedirs(path)
    except OSError as exception:
        if exception.errno != errno.EEXIST or not os.path.isdir(path):
            raise

def change_filename_old(smali_path, smali_filename, target, tempdir):
    """
    Change smali filenames 
    1. list up file name change candidate
    2. change listed
    3. handle R.files : change original class reference at least
       (blacklist filenames)
     ex1) .class definition of package name
     ex2) Lru/getcorvin/mettir/R$attr; => modified one       
    
    * Blacklist directory
     - android.support
     - android.annotation
     - NOTE: we should find more ...
       e.g., malware developer uses dir with android.support
    """

    print "[*] Changing Filename in Smali"

    for index in range(0, len(smali_path)):
        only_filename = smali_filename[index]

        if is_startfrom_blacklist_dirname(smali_path[index]):
            continue

        if is_startfrom_blacklist_filename(only_filename):
            continue

        oldname = ret_fullpath(target, smali_path[index]\
            , smali_filename[index])
        newname = ret_fullpath(target, smali_path[index]\
            , ret_rot_filename(smali_filename[index]))        

        os.rename(oldname, newname)

# source from : https://gist.github.com/jacobtomlinson/9031697
def removeEmptyFolders(path, removeRoot=True):
    'Function to remove empty folders'
    if not os.path.isdir(path):
        return

    # remove empty subfolders
    files = os.listdir(path)
    if len(files):
        for f in files:
            fullpath = os.path.join(path, f)
            if os.path.isdir(fullpath):
                removeEmptyFolders(fullpath)

    # if folder empty, delete it
    files = os.listdir(path)
    if len(files) == 0 and removeRoot:
        os.rmdir(path)

def copytree(src, dst, symlinks=False, ignore=None):
    for item in os.listdir(src):
        s = os.path.join(src, item)
        d = os.path.join(dst, item)
        if os.path.isdir(s):
            shutil.copytree(s, d, symlinks, ignore)
        else:
            shutil.copy2(s, d)

def change_filename(smali_path, smali_filename, target, tempdir):
    """
    new changer 
    """

    print "[*] Changing Filename in Smali"
    
    # make sure tempdir not exist
    if os.path.exists(tempdir):
        shutil.rmtree(tempdir)    

    path = target + '/smali/'
    path_len = len(path)

    for (root, dirnames, filenames) in os.walk(path):
        for idx in range(len(filenames)):
            old = os.path.join(root, filenames[idx])

            new = os.path.join(tempdir, root, ret_rot_filename(filenames[idx]))
            if is_startfrom_blacklist_filename(filenames[idx]):
                new = os.path.join(tempdir, root, filenames[idx])

            new_dir = os.path.join(tempdir, root)
            
            make_dir(new_dir)
            shutil.move(old, new)

    removeEmptyFolders(path)
    make_dir(path)

    try:
        copytree(tempdir+"/"+path, path)
    except:
        print "error in copytree"
        
    if os.path.exists(tempdir):
        shutil.rmtree(tempdir)    



def change_dir(smali_path, target, tempdir):
    """
    change dir structure
    1. if dir name contains blacklist_dir => pass
      blacklist_dir : e.g., android compat library
    2. if not blacklist => encrypt and change dirname
    """

    print "[*] Changing Dirname in Smali"
    
    path = target + '/smali/'
    path_len = len(path)

    for (root, dirnames, filenames) in os.walk(path):
        for idx in range(len(dirnames)):
            old = os.path.join(root, dirnames[idx])
            new = os.path.join(root, rot13(dirnames[idx]))

            path_name = old[path_len-1:] #take out target+/smali
            #if is_startfrom_blacklist_dirname(path_name):
            #    continue
            if is_current_contains_blacklist_dir(old):
                continue
            
            #logging.info("dir: "+old+"->"+new)
            shutil.move(old, new)
            dirnames[idx] = rot13(dirnames[idx])  # simple trick to update list

def copy_back(target, tempdir):
    """
    copy tempdir files into target/smali directory to handle renaming error
    e.g., 1) directory contains a,b,c,...,z
      2) a => q
      3) q => z
      4) then we miss original one
    How to fix? if there exist targetfile
      1) changed to temp name
      2) record to list with tempname:target
      3) finally change
      4) should resolve 3) change still has conflict
    """
    pass
