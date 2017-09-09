import argparse
import shutil
import signal
import os

import conf
from modules.common import exit_gracefully, load_filelist_with_extension
from obfscomb import ObfC


def remove_dot_from_filename(filename):
    """remove dot from input filename"""
    output = filename
    if '.' in filename:
        output = filename.split('.')[0]

    if '/' in output:
        output = output.split('/')[len(output.split('/'))-1]
    return output


def ret_command(variable, apkname):
    """return correct template string"""
    return variable.replace('{1}', apkname)


class ObfuscationGenerator:
    TEMP_DIR = "temp_obfus"

    def __init__(self, indir, outdir, dry=False):
        self.outdir = outdir
        self.indir = indir
        self.dry = dry

    def run(self, obfuscations=None, custom=None):
        if obfuscations is None and custom is None:
            raise Exception("You must select some!")

        if obfuscations is not None:
            alloptions = ObfC.obfs2chars(obfuscations)
            generator = lambda :ObfC.gen_all_instructions(alloptions)
            new_generator = True
        else:
            new_generator = False
            def generator():
                for x in custom:
                    yield x, False, None #not used

        filelist = load_filelist_with_extension(self.indir, "apk")
        for filename in filelist:
            print filename
            apkname = remove_dot_from_filename(filename)
            print apkname

            self.extract_smali(self.indir, apkname)

            prev = None
            for obfuscation, restore, _ in generator():
                if new_generator:
                    self.new_run_obfuscation(obfuscation, restore, apkname, prev)
                else:
                    self.run_obfuscation(obfuscation, apkname)
                prev = obfuscation
                print

            self.dir_cleanup(self.indir + "/" + apkname)

    def run_obfuscation(self, obfs_list, apkname):
        working_dir = self.indir + "/" + self.TEMP_DIR
        self.dir_cleanup(working_dir)
        self.copytree(self.indir + "/" + apkname, working_dir)

        self.new_execute_selected_obfuscation(obfs_list, working_dir, None)
        self.build_apk(working_dir, self.outdir + "/" + apkname, obfs_list)
        self.dir_cleanup(working_dir)

    def new_run_obfuscation(self, obfuscation, restore, apkname, prev):
        working_dir = self.indir+"/"+self.TEMP_DIR
        if prev is None:
            self.copytree(self.indir + "/" + apkname, working_dir)
        if restore:
            self.dir_cleanup(working_dir)
            print 'RESTORE:', obfuscation
            self.copytree(self.indir+"/"+obfuscation, working_dir)
        else:
            print 'CALCULATE:', obfuscation
            self.new_execute_selected_obfuscation(obfuscation, working_dir, prev)
            self.build_apk(working_dir, self.outdir+"/"+apkname, obfuscation)
            self.copytree(working_dir, self.indir+"/"+obfuscation)

    def new_execute_selected_obfuscation(self, lists, apkname, previous):
        results = lists if previous is None else set(lists + '_') - set(previous + '_')
        for x in results:
            for obf in ObfC.chars2obfs(x):
                self.os_run(ret_command(obf, apkname))

    def extract_smali(self, indir, target):
        if not os.path.exists(target):
            self.os_run('apktool d ./' +
                        indir + "/" + target + '.apk -o' +
                        indir + "/" + target,
                        "[*] Decoding apk file to smali")

    def build_apk(self, target, name, postfix):
        filename = name + "_" + postfix + ".apk"
        self.os_run('apktool b ' + target + " -o " + filename,
                    "Generating %s" % filename)

    def os_run(self, command, msg=None):
        if msg:
            print msg
        print command
        if not self.dry:
            os.system(command)

    def dir_cleanup(self, a_directory):
        if not self.dry:
            if os.path.exists(a_directory):
                shutil.rmtree(a_directory)

    def copytree(self, src, target):
        print 'copyTree', src, '->', target
        if not self.dry:
            shutil.copytree(src, target)


if __name__ == "__main__":
    def str2bool(v):
        v = v.lower()
        if v in ('yes', 'true', 'y', 't', '1'):
            return True
        if v in ('no', 'false', 'n', 'f', '0'):
            return False
        raise argparse.ArgumentTypeError("boolean value expected")


    #### DEFINE PARSER
    parser = argparse.ArgumentParser()
    parser.add_argument("-i", "--inputdir", dest="indir", type=str,
                        default=None, help="APK input direcotry",
                        required=True)
    parser.add_argument("-o", "--outputdir", dest="outdir", type=str,
                        default=None, help="APK output directory",
                        required=True)

    parser.add_argument("-c", "--combinations", dest="combs", type=str,
                        default="", help="combinations to try",
                        required=False)

    parser.add_argument("-d", "--dry", dest="dry", type=str2bool, nargs='?',
                        const=True, default='true',
                        help="combinations to try",
                        required=False)

    args = parser.parse_args()
    #### END PARSER

    og = ObfuscationGenerator(args.indir, args.outdir, args.dry) #, True

    # ctrl-c handler
    signal.signal(signal.SIGINT,
                  exit_gracefully(signal.getsignal(signal.SIGINT)))

    # generate all combinations
    og.run(obfuscations=conf.INFERRING_LIST)
    # og.run(custom=[
    #     'KN',
    #     'B', #'I', 'X', 'N',
    #     ##########
    #     #'AVSKERP'
    #     ##########
    #     # 'VSKERP'
    #     # 'ASKERP'
    #     # 'AVKERP'
    #     # 'AVSERP'
    #     # 'AVSKRP'
    #     # 'AVSKEP'
    #     # 'AVSKER'
    # ])
