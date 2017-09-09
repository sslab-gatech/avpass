#!/usr/bin/env python2

"""
AVPASS Common module
"""

import os
import string
import re
import logging
import uuid
import signal
import sys


def load_filelist_from_dir(dirname, onlyfile = True):
    """
    Get all files end without extension in an apk project directory
    """

    extension_path = []

    for root, dirs, files in os.walk(dirname):
        for filename in files:
            if onlyfile:
                extension_path.append(filename)
            else:
                extension_path.append(root + "/" + filename)
            
    return extension_path

def exit_gracefully(original_sigint):
    # code from: https://stackoverflow.com/questions/18114560/python-catch-ctrl-c-command-prompt-really-want-to-quit-y-n-resume-executi
    def _exit_gracefully(signum, frame):
        # restore the original signal handler as otherwise evil things will happen
        # in raw_input when CTRL+C is pressed, and our signal handler is not re-entrant
        signal.signal(signal.SIGINT, original_sigint)

        try:
            if raw_input("\nReally quit? (y/n)> ").lower().startswith('y'):
                sys.exit(1)

        except KeyboardInterrupt:
            print("Ok ok, quitting")
            sys.exit(1)

        # restore the exit gracefully handler here
        signal.signal(signal.SIGINT, _exit_gracefully)
    return _exit_gracefully


def extract_package_name(line):
    "Extract only name from line"

    temp = line.split('package=\"')[1]
    temp = temp.split('\">')[0]
    return temp

def ret_package_path(filename, target):
    "Return package path from manifest"

    package = ""
    fullpath = target+"/smali/"
    con = open(filename, 'r').readlines()
    for line in con:
        if 'package=' in line:
            package = extract_package_name(line) 
            return package
    return package

def ret_package_name(filename, target):
    "Return only the package name from manifest"
    package = ""
    con = open(filename, 'r').readlines()
    for line in con:
        if 'package=' in line:
            package = extract_package_name(line)
            return package
    return package

def caesar(plaintext, shift):
    "caesar cipher"

    shift %= 26 

    alphabet_lower = string.ascii_lowercase
    alphabet_upper = string.ascii_uppercase

    shifted_alphabet_lower = alphabet_lower[shift:] + alphabet_lower[:shift]
    shifted_alphabet_upper = alphabet_upper[shift:] + alphabet_upper[:shift]

    alphabet = alphabet_lower + alphabet_upper
    shifted_alphabet = shifted_alphabet_lower + shifted_alphabet_upper

    table = string.maketrans(alphabet, shifted_alphabet)
    return plaintext.translate(table)

def cleanUp(cleanup, target):
    "clecn up apk after obfuscation"

    if cleanup == "yes" or cleanup == "Yes":
        print "[*] Packing APK..."
        os.system('apktool b '+target+ " -o " + target + "_out.apk")
        os.system("rm -rf "+target)
        print "[*] Everything done now"
    else:
        print "[*] Everything done now"

def random_string():
    "return 32byte random string"

    str = uuid.uuid4().hex  
    return str

def random_string_arr(length):
    "return array with random strings"

    output = []
    for x in range(length):
        output.append(random_string())
    return output

def extract_smali(target):
    "Extract smali file to target directory"    

    if not os.path.exists(target):
        print "[*] Decoding apk file to smali"
        os.system('apktool d ./'+target+'.apk -o' + target)

"""
def rot13(plaintext):
    "Simple ROT13 encryption"

    rot13m = string.maketrans(
    "ABCDEFGHIJKLMabcdefghijklmNOPQRSTUVWXYZnopqrstuvwxyz",
    "OPQRSTUVWXYZNopqrstuvwxyznBCDEFGHIJKLMAbcdefghijklma")
    return string.translate(plaintext, rot13m)
"""

def rot13(plaintext):
    "Simple ROT13 encryption"

    rot13m = string.maketrans(
    "ABCDEFGHIJKLMabcdefghijklmNOPQRSTUVWXYZnopqrstuvwxyz",
    "QRSTUVWXYZNopqrstuvwxyznBCDEFGHIJKLMAbcdefghijklmaOP")
    return string.translate(plaintext, rot13m)


def ret_rot_filename(filename):
    "Return rot13 encrypted filename"

    filename = rot13(filename.split('.')[0])
    return filename+".smali"

def ret_only_filename(filename):
    "Return filename without extension (apk)"

    if '.apk' in filename:
        filename = filename.split('.apk')[0]
    return filename

def load_filelist_with_extension(dirname, extension):
    """Get all files end with extension in an apk project directory."""
    extension_path = []
    for root, dirs, files in os.walk(dirname):
        for filename in files:
            if filename.endswith(extension):
                extension_path.append(root + "/" + filename)
                continue
    return extension_path

def find_classname_from_line(line):
    "Return clasname from given line"

    return_list = [] 
    temp_list = []      

    if '<L' not in line or ';>' not in line:
        temp_list = re.findall(r'(?<=L).*?(?=;)', line)

        # sanitize vector representation <>
        # e.g., Landroid/support/v4/util/SimpleArrayMap<TK;
        for item in temp_list:
           
            if '<' in item:
                item = item.split('<')[0]

            if item not in return_list:
                return_list.append(item)

        return return_list

    # MEMO : corner case of class
    # "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    # .local p1, "namedViews":Landroid/support/v4/util/ArrayMap;, \
    #    "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    else:
        temp_list = re.findall(r'<L(.*?);>', line)

        return_list.append(temp_list[0])
        line = line.replace('<L'+temp_list[0]+';>', '')

        temp_list = re.findall(r'(?<=L).*?(?=;)', line)

        for item in temp_list:
            if item not in return_list:
                return_list.append(item)

        return return_list

