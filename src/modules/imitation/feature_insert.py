import sys
import os
import re
from collections import deque


IN_FILENAME = 'empty.apk'
ADD_STRING = 2**0
ADD_VARIABLE = 2**1
ADD_CLASS = 2**2
ADD_PACKAGE = 2**3
ADD_API = 2**4
ADD_PERMISSION = 2**5
ADD_RESOURCE = 2**6


def getdir(apkname):
    assert apkname.strip()[-4:] == '.apk'
    return apkname[:-4]


def unpack_apk(apkname):
    assert os.path.exists(apkname)

    apkdir = getdir(apkname)
    if not os.path.exists(apkdir):
        print "[*] unpacking {0}".format(apkname)
        os.system("tools/apktool d " + apkname)
    else:
        print "[*] directory {0} already exists".format(apkdir)


def pack_apk(dirname, out_filename):
    assert os.path.exists(dirname)

    print "[*] packing {}".format(dirname)
    os.system("tools/apktool b {} -o out/{}".format(dirname, out_filename))


def insert_lines_to_file_before_return(target, out_add):
    f_out = open(target, 'r')
    out_lines = deque(f_out.readlines())
    f_out.close()

    f_out = open(target, 'w')
    flag_onCreate = False

    # TODO: what if .locals is not zero? what if onCreate() has contents?
    # TODO: what if the method is not onCreate()?
    while True:
        if flag_onCreate and out_lines[0].strip().startswith('return'):
            break

        line = out_lines.popleft()
        if line.strip().startswith('.method') and 'onCreate(' in line:
            flag_onCreate = True
        elif line.strip().startswith('.locals'):
            # for the safty
            #line = '.locals 2'
            line = '.locals 10'
        f_out.write(line + '\n')

    for line in out_add:
        f_out.write(line + '\n')

    while len(out_lines) > 0:
        f_out.write(out_lines.popleft() + '\n')


def get_MainActivity(out):
    # there must be onCreate() in MainActivity.smali file
    target = None
    for root, dirs, files in os.walk(out + '/smali'):
        for file_ in files:
            if file_ == 'MainActivity.smali':
                target = root + '/' + file_
                break
    if not target:
        print '[*] cannot find MainActivity.smali'
        sys.exit(0)
    return target


def insert_string(source, out, flag):
    assert os.path.exists(source)
    assert os.path.exists(out)

    f_source = open(source + '/string.txt', 'r')
    target = get_MainActivity(out)

    out_add = []
    for line in f_source:
        if line.strip().startswith('#') or line.strip() == '':
            continue

        line = re.sub(r' p[0-9]{1,2}', ' p1', line)
        out_add.append(line)

    insert_lines_to_file_before_return(target, out_add)


def insert_variable(source, out, flag):
    assert os.path.exists(source)
    assert os.path.exists(out)

    f_source = open(source + '/variable.txt', 'r')
    target = get_MainActivity(out)

    out_add = []
    for line in f_source:
        if line.strip().startswith('#') or line.strip() == '':
            continue

        line = re.sub(r' p[0-9]{1,2}', ' p1', line)
        out_add.append(line)

    insert_lines_to_file_before_return(target, out_add)


def replace_pkg(x, old, new):
    x = re.sub(r'L{}[^;:]*/([^/]*);'.format(old), 'L{}/\\1;'.format(new), x)
    return x


def get_return_type(x):
    if ' abstract ' in x or \
            ' native ' in x:
        return 'N'
    type_ = x.split(')')[1][0]
    return type_


def get_return_statement(x):
    const_ = ''
    return_ = ''

    if x == 'I' or x == 'B' or x == 'Z' or x == 'S' or x == 'C' or x == 'F':
        const_ = 'const v0, 0x0'
        return_ = 'return v0'
    elif x == 'J' or x == 'D':
        const_ = 'const-wide v0, 0x0'
        return_ = 'return-wide v0'
    elif x == 'L' or x == '[':
        const_ = 'const v0, 0x0'
        return_ = 'return-object v0'
    elif x == 'V':
        return_ = 'return-void'
    elif x == 'N':
        pass

    return const_ + '\n' + return_ + '\n.end method'


def insert_class(source, out, flag):
    assert os.path.exists(source)
    assert os.path.exists(out)

    target = get_MainActivity(out)
    source_package_name = get_package_name(source).replace('.', '/')
    f_source = open(source + '/class.txt', 'r')
    lines = deque(f_source.readlines())
    f_source.close()

    class_set = set([])

    while len(lines) > 0:
        line = lines.popleft().strip()[1:]

        if (flag & ADD_PACKAGE):
            target = out + '/smali/' + line
        directory = os.path.dirname(target)
        path = directory + '/' + line.split('/')[-1]
        package_name = '/'.join(directory.split('/')[2:])

        field_ = []
        method_ = []
        method_inside = {'def':[], 'contents':[], 'return':[]}
        class_ = ''
        super_ = ''
        source_ = ''

        while len(lines) > 0 and line != '':
            line = lines.popleft().strip()
            if line.startswith('#.class'):
                class_ = line[1:]
            elif line.startswith('#.super'):
                super_ = line[1:]
            elif line.startswith('#.source'):
                source_ = line[1:]
            elif line.startswith('#.field'):
                field_.append(line[1:])
            elif line.startswith('#.method'):
                method_.append(method_inside)
                method_inside = {'def':[], 'contents':[], 'return':[]}
                method_inside['def'].append(line[1:])
                return_type = get_return_type(line[1:])
                return_statement = get_return_statement(return_type)
                method_inside['return'].append(return_statement)
            elif line.startswith('.locals '):
                method_inside['def'].append(line)
            # from here, conditions are flag-dependent
            elif line.startswith('invoke') and (flag & ADD_API):
                method_inside['contents'].append(line)
            elif line.startswith('const') and (flag & ADD_STRING):
                method_inside['contents'].append(line)
            elif line.startswith('.param ') or \
                    line.startswith('.line ') or \
                    line.startswith('.local ') and (flag & ADD_VARIABLE):
                #line = re.sub(r' p[0-9]{1,2}', ' p1', line)
                method_inside['contents'].append(line)

        field_ = '\n'.join(field_)
        temp = [x['def'] + x['contents'] + x['return'] for x in method_]
        method_ = []
        for x in temp:
            method_.extend(x)
        method_ = '\n'.join(method_)

        if not os.path.exists(directory):
            os.makedirs(directory)

        f = open(path, 'w')

        # class & super
        if not (flag & ADD_PACKAGE):
            class_ = replace_pkg(class_, source_package_name, package_name)
            if source_package_name in super_:
                super_ = replace_pkg(super_, source_package_name, package_name)

        temp = class_.split()[-1]
        if temp in class_set:
            f.close()
            os.remove(path)
            continue
        class_set.add(temp)

        # source
        f.write(class_ + '\n' + \
                super_ + '\n' + \
                source_ + '\n')

        # field
        if (flag & ADD_VARIABLE):
            if not (flag & ADD_PACKAGE):
                field_ = replace_pkg(field_, source_package_name, package_name)
            f.write(field_ + '\n')

        # method
        if not (flag & ADD_PACKAGE):
            method_ = replace_pkg(method_, source_package_name, package_name)
        f.write(method_ + '\n')

        f.close()


def get_line_has_string(st, lines):
    for i in xrange(len(lines)):
        line = lines[i]
        if st in line:
            break
    return i, line


def get_package_name(source):
    f_source = open(source + '/AndroidManifest.xml', 'r')
    lines = f_source.readlines()
    f_source.close()

    i, line = get_line_has_string('package=', lines)
    package_name = re.search(r'package="([^"]*)"', line).group(1)
    return package_name


def insert_package(source, out, flag):
    assert os.path.exists(source)
    assert os.path.exists(out)

    f_source = open(source + '/class.txt', 'r')
    lines = deque(f_source.readlines())
    f_source.close()

    while len(lines) > 0:
        path = out + '/smali/' + lines.popleft().strip()[1:]
        directory = os.path.dirname(path)
        line = path

        while len(lines) > 0 and line != '':
            line = lines.popleft().strip()[1:]
            if line.startswith('.class'):
                class_ = line
            elif line.startswith('.super'):
                super_ = line

        if not os.path.exists(directory):
            os.makedirs(directory)

            if (flag & ADD_CLASS):
                continue

            temp_class_filename = '{}/a.smali'.format(directory)
            package_name = '/'.join(directory.split('/')[2:])
            temp_class_type = 'L{}/a'.format(package_name)
            f = open(temp_class_filename, 'w')
            f.write('.class public {};\n'.format(temp_class_type))
            f.write('.super Ljava/lang/Object;\n')

    package_name = get_package_name(source)

    f_out = open(out + '/AndroidManifest.xml', 'r')
    lines = f_out.readlines()
    f_out.close()

    f_out = open(out + '/AndroidManifest.xml', 'w')
    i, line = get_line_has_string('package=', lines)
    lines[i] = re.sub(r'package=".*"', 'package="{}"'.format(package_name), line)
    f_out.writelines(lines)
    f_out.close()


def insert_api(source, out, flag):
    assert os.path.exists(source)
    assert os.path.exists(out)

    f_source = open(source + '/api.txt', 'r')
    source_package_name = get_package_name(source).replace('.', '/')
    out_package_name = get_package_name(out).replace('.', '/')

    target = get_MainActivity(out)

    out_add = []
    for line in f_source:
        line = line.strip()
        if line.startswith('#') or \
                line == '' or \
                line.startswith(':') or \
                line.startswith('.') or \
                'move-exception' in line:
            continue

        if source_package_name in line:
            if not (flag & ADD_CLASS):
                continue
            if not (flag & ADD_PACKAGE):
                line = re.sub(r'{}'.format(source_package_name),
                              out_package_name, line)

        line = re.sub(r'([{ ])p([0-9]{1,2}[}, ])', '\\1v\\2', line)
        out_add.append(line)

    insert_lines_to_file_before_return(target, out_add)


def insert_permission(source, out, flag):
    assert os.path.exists(source)
    source_file = source + '/AndroidManifest.xml'
    assert os.path.exists(source_file)
    assert os.path.exists(out)
    out_file = out + '/AndroidManifest.xml'
    assert os.path.exists(out_file)

    permissions = []
    for line in open(source_file):
        if 'uses-permission' in line:
            permissions.append(line)

    lines = open(out_file).readlines()
    i = 0
    for line in lines:
        if '</application>' in line:
            break
        i += 1

    head = lines[:i+1]
    tail = lines[i+1:]

    f = open(out_file, 'w')
    f.writelines(head)
    f.writelines(permissions)
    f.writelines(tail)
    f.close()


def insert_resource(source, out, flag):
    assert os.path.exists(source)
    assert os.path.exists(out)

    for root, dirs, files in os.walk(source + '/res'):
        for file_ in files:
            words = root.split('/')
            index = words.index('res')
            out_path = out + '/' + '/'.join(words[index:])
            if not os.path.exists(out_path):
                os.makedirs(out_path)
            os.system("cp {} {}".format(root + '/' + file_,
                                        out_path + '/' + file_))


def do_add(source_dir, empty_dir, out_dir, flag):
    os.system('cp -r {} {}'.format(empty_dir, out_dir))

    if flag & ADD_PACKAGE:  insert_package(source_dir, out_dir, flag)
    if flag & ADD_CLASS:    
        insert_class(source_dir, out_dir, flag)
    else:
        if flag & ADD_API:      insert_api(source_dir, out_dir, flag)
        if flag & ADD_STRING:   insert_string(source_dir, out_dir, flag)
        if flag & ADD_VARIABLE: insert_variable(source_dir, out_dir, flag)
    if flag & ADD_PERMISSION: insert_permission(source_dir, out_dir, flag)
    if flag & ADD_RESOURCE: insert_resource(source_dir, out_dir, flag)

    #pack_apk(out_dir, source_dir + '_' + str(flag) + '.apk')
    flag_bin = bin(flag)[2:]
    flag_bin = '0' * (7 - len(flag_bin)) + flag_bin
    pack_apk(out_dir, source_dir + '_' + flag_bin  + '.apk')
    os.system('rm -rf {}'.format(out_dir))


if __name__ == '__main__':
    source_dir = sys.argv[1]
    out_dir = 'temp_{}'.format(source_dir)
    empty_dir = sys.argv[2]

    args = sys.argv[3:]
    flag = 0

    for arg in args:
        if arg == 'all':
            flag = 127
        elif arg == 'all-all':
            for i in xrange(128):
                print source_dir, i
                do_add(source_dir, empty_dir, out_dir, i)
            exit(0)
        elif arg == 'string':
            flag |= ADD_STRING
        elif arg == 'variable':
            flag |= ADD_VARIABLE
        elif arg == 'class':
            flag |= ADD_CLASS
        elif arg == 'package':
            flag |= ADD_PACKAGE
        elif arg == 'api':
            flag |= ADD_API
        elif arg == 'permission':
            flag |= ADD_PERMISSION
        elif arg == 'resource':
            flag |= ADD_RESOURCE
        else:
            print 'invalid arg: {}'.format(arg)

    do_add(source_dir, empty_dir, out_dir, flag)
