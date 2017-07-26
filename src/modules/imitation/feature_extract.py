import sys
import os

def getdir(apkname):
    assert apkname.strip()[-4:] == '.apk'
    return apkname[:-4]


def unpack_apk(apkname):
    assert os.path.exists(apkname)

    apkdir = getdir(apkname)
    if not os.path.exists(apkdir):
        print "[*] unpacking {}".format(apkname)
        os.system("apktool d {} -o {}".format(apkname, apkdir))
    else:
        print "[*] directory {} already exists".format(apkdir)
        print "[*] deleting {}".format(apkdir)
        os.system("rm -rf {}".format(apkdir))
        print "[*] unpacking {0}".format(apkname)
        os.system("apktool d {} -o {}".format(apkname, apkdir))

def get_smali(apkdir):
    assert os.path.exists(apkdir)
    target = apkdir + '/smali'
    assert os.path.exists(target)

    for root, dirs, files in os.walk(target):
        for filename in files:
            if filename.endswith('.smali'):
                in_filename = root + '/' + filename
                yield in_filename


def extract_smali(apkdir, keyword, script_name, function=None):
    out_filename = apkdir + "/{}.txt".format(keyword)
    if os.path.exists(out_filename):
        os.remove(out_filename)

    for in_filename in get_smali(apkdir):
        in_filename = '\$'.join(in_filename.split('$'))
        rel_path = '/'.join(in_filename.split('/')[2:])
        os.system("echo \#{} >> {}".format(rel_path, out_filename))
        os.system("{} {} >> {}"\
            .format(script_name, in_filename, out_filename))
        if function:
            function(in_filename, out_filename)
        os.system("echo >> {}".format(out_filename))


def extract_string(apkdir):
    extract_smali(apkdir, "string", "modules/imitation/extract_string.sh")


def extract_variable(apkdir):
    extract_smali(apkdir, "variable", "modules/imitation/extract_variable.sh")


def extract_class(apkdir):
    extract_smali(apkdir, "class", "modules/imitation/extract_class.sh")


def extract_api(apkdir):
    extract_smali(apkdir, "api", "modules/imitation/extract_api.sh")


def extract_permission(apkdir):
    pass


def extract_resource(apkdir):
    pass
    

def extractall(apkdir):
    extract_string(apkdir)
    extract_variable(apkdir)
    extract_class(apkdir)
    extract_api(apkdir)
    extract_permission(apkdir)
    extract_resource(apkdir)


if __name__ == '__main__':
    #apkname = sys.argv[1]
    #unpack_apk(apkname)
    #apkdir = getdir(apkname)
    apkdir = sys.argv[1]
    extractall(apkdir)
