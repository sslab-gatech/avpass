import xml.etree.ElementTree as ET
from xml.etree.ElementTree import Element, SubElement, Comment
import fileinput, sys
import magic

from common import *


BLACKLIST_MAGIC = ['jav', 'zip', 'elf']
NULLIFY_DIR = ['res/raw', 'assets', 'unknown']

def nullify_payload(target):
    "Nullify payloads in define directories (NULLIFY_DIR)"

    for item in NULLIFY_DIR:
        dirname = target + '/' + item
        dirname = "./" + dirname
        filelist = load_filelist_from_dir(dirname, onlyfile = False)
        for filename in filelist:
            if filename.startswith(dirname):       
                open(filename,'w').close()

def ret_magic(filename):
    magic_value = magic.from_file(filename)
    return magic_value[0:3]

def remove_apk_jar_byheader(dirname):
    filelist = load_filelist_with_extension(dirname, "")
    #print dirname
    #print filelist
    print "Try to remove payload by magic value"

    for filename in filelist:
        mg = ret_magic(filename).lower()

        if "jav" in mg or "zip" in mg or "elf" in mg:
            # filtering jar, zip, elf, apk

            #print "[*] Removing %s file" % filename
            os.remove(filename)
            open(filename, 'w').close()

def mod_at_manifest(line):
    """
    Modify at@ variable's name
    e.g., <application android:icon="@drawable/icon" 
      android:label="@string/app_name">      

    corner case#1 
         <application android:icon="@drawable/ic_launcher" 
           android:label="@string/app_name" 
           android:theme="@android:style/Theme.NoTitleBar.Fullscreen">
      => we should skip @android
    """
    
    at_name = []
    temp = line.split('@')[1:]
    for item in temp:
        if item.startswith("android:"):
            continue
        if '/' in item:
            #string, id, drawable
            name = item.split('\"')[0].split('/')[1]
            at_name.append(name)

    for item in at_name:
        #print item
        line = line.replace("/"+item+"\"", "/"+rot13(item)+"\"")
    
    return line

def process_public_xml(filename):
    "Modify <public> tag, change name=enc"

    #for line in open(filename,'r').readlines():    
    for line in fileinput.input(filename, inplace=1):
        if '<public' in line:
            word = line.split('name=\"')[1].split("\"")[0]
            line = line.replace('name=\"'+word, 'name=\"'+rot13(word))
        #print line
        sys.stdout.write(line)
    fileinput.close()

# TODO. handle multiple line <string> tag
def process_strings_xml(filename, should_null_string):    
    """
    Modify strings.xml 
    1. modify strings name (ID)
    2. nullify strings by user request    

    ex) <string name="hello">Hello World</string>
     => <string name="enc"></string>    
    """
    
    # 1. modify string name
    #for line in open(filename,'r').readlines():
    print "Try to nullify strings in xml"
    for line in fileinput.input(filename, inplace=1):        

        if "name=\"" in line:
            word = line.split('name=\"')[1].split("\"")[0]
            line = line.replace('name=\"'+word, 'name=\"'+rot13(word))
        
        sys.stdout.write(line)
    fileinput.close()

    # 2. nullify string if user requests    
    # sanitize contents between <string> tag
    
    if should_null_string:
        #print "Nullifying strings in %s" % filename
        xmlfile = ET.parse(filename)
        root = xmlfile.getroot()
        for child in root:
            child.text = ""
    
        xmlfile.write(filename, encoding='utf-8')
    
def only_strings_xml(filename, should_null_string):  
    if should_null_string:
        print "Nullifying strings in %s" % filename
        xmlfile = ET.parse(filename)
        root = xmlfile.getroot()
        for child in root:
            child.text = ""
    
        xmlfile.write(filename, encoding='utf-8')


def process_main_xml(filename, should_null_string):
    """
    1. 
    2. nullity android:text="" contents if should_null_string set
    """

    for line in open(filename,'r').readlines():    
    #for line in fileinput.input(filename, inplace=1):
        if '<public' in line:
            word = line.split('name=\"')[1].split("\"")[0]
            line = line.replace('name=\"'+word, 'name=\"'+rot13(word))        
    #    sys.stdout.write(line)
    #fileinput.close()
