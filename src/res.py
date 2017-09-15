"""
1. Modify images/swf in resource
  e.g., python res.py -f test.apk image -c no 

2. Modify data in resource related xml files
 - this should be modified with pcm.py obfuscation

3. Nullify payload (.so, .jar, .zip, &c) and remove "unknown" directory
 - this will destroy original functionality
  e.g., python res.py -f test.apk payload -c no -u yes
 - -u: remove unknown directory?
"""

import fileinput, argparse
import shutil
import sys

sys.path.append('./modules')
from common import *
from pcmutil import *
from res_image import *
from res_xml import * # contain xml and nullify

class Res(object):

    def __init__(self, target, want_cleanup, remove_unknown=None, null_string=None):
        self.cleanup = want_cleanup
        self.target = target
        self.remove_unknown = remove_unknown
        self.null_string = null_string

        self.smali = self.target + "/smali"
        self.smali_filename = []
        self.smali_path = []
        self.caesar_file = []

        self.class_list = []
        self.method_list = {}
        self.class_to_super = {}
        self.field_list = []

        self.assets_filename = {}

    def load_source(self):
        "Load smalifile list"

        extract_smali(self.target)
        print "Loading Smali files list"
        self.smali_path, self.smali_filename, self.caesar_file, num = \
            scan_smali_all(self.smali)
        self.xml_path = load_filelist_with_extension(self.target+"/res", 'xml')

    def scan_names(self):
        self.class_list, self.method_list, self.class_to_super, self.field_list = \
            scan_class_names(self.target, self.smali_path, self.smali_filename)


    def check_classname_exist(self, classname):
        """
        Check whether specific classname exists in classlist
            - the class_list is scanned at the initial stage
        """

        if classname in self.class_list:
            return True
        return False

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

    def handle_rfile(self, full_path):
        """
        Handling R-files now. This is requested by user using -r option
        (only R-files)
        """

        """ THIS IS DONE BY PCM first (recommend to use PCM first)
        for line in fileinput.input(full_path, inplace=1):
            
            # .class definitions
            if ".class " in line and ";" in line:               
                line = self.mod_line_class_for_rfile(line)
                #print line
            elif ".field " in line:
                line = mod_field_define_name(line)

            sys.stdout.write(line)
        fileinput.close()
        """
        pass

    def image_obfuscation(self):
        "Change image's hex values by modifying pixel or adding one byte"

        # scan all image files (in IMAGE_LIST extension)
        png_paths = load_filelist_from_extension_arr(self.target, IMAGE_LIST)

        print "Image file obfuscation - flip pixel"
        for filename in png_paths:
            #print "[*] modifying image file: {0}".format(filename)

            if filename.endswith('.png') or filename.endswith('.PNG'):
                modify_png(filename)

            elif filename.endswith('.jpg') or filename.endswith('.JPG') or \
                    filename.endswith('.jpeg') or filename.endswith('.JPEG'):
                modify_jpg(filename)

            elif filename.endswith('.gif') or filename.endswith('.GIF'):
                modify_gif(filename)

            elif filename.endswith('.bmp') or filename.endswith('.BMP'):
                modify_bmp(filename)

            elif filename.endswith('.swf') or filename.endswith('.SWF'):
                modify_swf(filename)

        cleanUp(self.cleanup, self.target)

    def resxml_obfuscation(self):
        """
        Change string, id, drawable, &c in XML
        """

        print "[*] XML in resource obfuscation"

        # 1. change Rfile first 
        # MEMO : now skip because PCM already changed them
        # TODO : how to handle already modified R files?
        for index in range(len(self.smali_path)):
            full_path = ret_fullpath(self.target, self.smali_path[index], \
                                     self.smali_filename[index])
            only_filename = self.smali_filename[index]

            #skip the resource file (R.smali, &c)
            if filename_in_rfiles(R_FILE, only_filename):
                # take care of .class in R-file
                self.handle_rfile(full_path)

        # 2-1. change androidmanifest.xml (only about resource id with @)
        for line in fileinput.input(self.target+'/AndroidManifest.xml', inplace=1):
            #for line in open(self.target+'/AndroidManifest.xml', 'r').readlines():

            #modify id name in line
            if '@' in line and '/' in line:
                line = mod_at_manifest(line)
            sys.stdout.write(line)
        fileinput.close()

        # check whether user wants to remove string        
        should_null_string = False
        if self.null_string == 'yes':
            should_null_string = True

        # 2-2 change public.xml, strings.xml and layout.xml
        for item in self.xml_path:
            if 'public.xml' in item:
                process_public_xml(item)

            elif 'strings.xml' in item:
                process_strings_xml(item, should_null_string)

            elif 'main.xml' in item:
                process_main_xml(item, should_null_string)

    def string_obfuscation(self):

        should_null_string = False
        if self.null_string == 'yes':
            should_null_string = True

            # 2-2 change public.xml, strings.xml and layout.xml
        for item in self.xml_path:
            if 'strings.xml' in item:
                only_strings_xml(item, should_null_string)

    def clean_up_unknown(self):
        "remove unknown directory if user wants"

        if self.remove_unknown == 'yes':
            dirname = self.target + '/unknown'
            if os.path.exists(dirname):
                print "Removing unknown directory"
                shutil.rmtree(dirname)
        else:
            pass

    def payload_nullify(self):
        "make payload(jar, zip, elf) to null file if user wants"

        dirname = self.target
        remove_apk_jar_byheader(dirname)
        nullify_payload(self.target)

if __name__ == "__main__":

    parser = argparse.ArgumentParser()
    parser.add_argument("-f", "--file", dest="apk_filename", type=str,
                        default=None, help="This is the name of APK")

    # Create the subparser group
    subparsers = parser.add_subparsers(title='arguments')

    # Image obfuscation
    ip = subparsers.add_parser('image', help='Image Perturbation', add_help=False)
    ip.add_argument("-c", "--cleanup", dest="cleanup", type=str, default=None,
                    choices=['yes', 'no'], required=True)
    ip.set_defaults(action='image')

    # Payload obfuscation
    pay = subparsers.add_parser('payload', help='Payload Nullification', \
                                add_help=False)
    pay.add_argument("-c", "--cleanup", dest="cleanup", \
                     type=str, default=None, choices=['yes', 'no'], required=True)
    #pay.add_argument("-u", "--remove-unknown", dest="remove_unknown", \
    #    type=str, default=None, choices=['yes', 'no'], required=True)
    pay.set_defaults(action='payload')

    # XML obfuscation
    resxml = subparsers.add_parser('resxml', help='Resource XML Perturbation', add_help=False)
    resxml.add_argument("-c", "--cleanup", dest="cleanup", type=str, default=None,
                        choices=['yes', 'no'], required=True)
    resxml.add_argument("-n", "--null-string", dest="null_string", type=str, default=None,
                        choices=['yes', 'no'], required=True)
    resxml.set_defaults(action='resxml')

    # Parse the arguments
    args = parser.parse_args()

    if args.action == "image":
        print "[*] Start image obfuscation"

        filename = ret_only_filename(args.apk_filename)
        res = Res(filename, args.cleanup)
        res.image_obfuscation()

    elif args.action == "resxml":
        print "[*] Start Resource XML obfuscation"

        filename = ret_only_filename(args.apk_filename)
        res = Res(target=filename, want_cleanup=args.cleanup, \
                  null_string=args.null_string)
        res.load_source()
        res.scan_names()
        res.string_obfuscation() #nullify string

        #TODO: modify this function (somehow we met error!!!)
        #res.resxml_obfuscation()

        #TODO: implement this
        #res.image_name_changer()

    elif args.action == "payload":
        print "[*] Start payload nullification"

        filename = ret_only_filename(args.apk_filename)
        #res = Res(target=filename, want_cleanup=args.cleanup, \
        #    remove_unknown=args.remove_unknown)
        res = Res(target=filename, want_cleanup=args.cleanup, \
                  remove_unknown=False)
        res.payload_nullify()
        res.clean_up_unknown()

