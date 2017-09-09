import csv
import os, sys
import argparse
import json
import numpy as np
import collections
import pickle
from hashlib import sha1

sys.path.append('./modules')
from conf import *
from common import *

SHA1SUM = "sha1sum.txt"
DEFAULT_OUTPUT = "inferred_rules" # name of pkl

np.set_printoptions(threshold=np.inf)
NUM_FEATURE = len(INFERRING_LIST)
Features = []

table_str = ""
complex_dict = []

def gen_feature_arr():
    out = []
    for item in range(NUM_FEATURE):
        out.append("Obf"+str(item+1))
    return out

def one_array(number):
    out = []
    for x in range(number):
        out.append(1)
    return out

def unique_rows(a):
    a = np.ascontiguousarray(a)
    unique_a = np.unique(a.view([('', a.dtype)]*a.shape[1]))

    return unique_a.view(a.dtype).reshape((unique_a.shape[0], a.shape[1]))

def ret_num_of_zeros(numpy_arr):
    return 10

def return_only_filename(filename):
    """remove dot from input filename"""
    output = filename

    if '/' in output:
        output = output.split('/')[len(output.split('/'))-1]
    return output

def return_json_filename(sha1hash):
    return "VTDL_"+sha1hash+".json"

def generate_sha1sum(indir, filelist):
    wfile = open(indir+"/"+SHA1SUM, 'w')

    for filename in filelist:
        file = open(filename, 'r')
        data = file.read()

        sha1Hash = sha1(data)
        wfile.write(sha1Hash.hexdigest()+"  "+return_only_filename(filename)+"\n")
        file.close()

def return_avlist(jsonlist):
    maxfilename = ""
    maxtotal = 0
    out = []

    #find file with maximum
    for filename in jsonlist:
        f = open(filename, 'r')
        temp = int(json.load(f)['total'])
        if temp > maxtotal:
            maxtotal = temp
            maxfilename = filename

    #find avlist from the file queried
    f = open(maxfilename, 'r')
    temp = json.load(f)['scans']
    temp_antivirus = temp.keys()

    for item in temp_antivirus:
        out.append(item.encode('ascii','ignore'))
    return out

def ret_family_names(sha1file):
    out = []
    family = ""
    sha1line = open(sha1file, 'r').readlines()
    for line in sha1line:
        if '  ' in line:
            filename = line.split('  ')[1]
            if '_' in line:
                family = filename.split('_')[0]

        if family not in out:
            out.append(family)
    return out

def infer_rule(avlist, familylist):

    avcounter = 0
    rule_out = {}

    for FILENAME in avlist:
        output = np.array(one_array(NUM_FEATURE))
        counter = 0

        for fam in familylist:

            FILEPATH = os.path.join(indir, FILENAME+"_"+fam+".csv")

            if os.path.exists(FILEPATH):
                dataset = np.loadtxt(FILEPATH, delimiter=",")
            else:
                continue

            total_num = dataset.shape[0]

            try:
                filtered = dataset[(0==dataset[:,NUM_FEATURE])]
            except:
                print "Error processing %s" % FILENAME
                pass

            temp = filtered.sum(axis=0)[0:NUM_FEATURE]
            filtered = np.delete(filtered, [NUM_FEATURE], axis=1).astype(int)

            max = 100

            for item in filtered:
                num_pert = item.sum(axis=0)
                if num_pert < max:
                    max = num_pert

            for item in filtered:
                if item.sum(axis=0) == max:
                    num_pert = item.sum(axis=0)
                    if num_pert > 0:
                        counter = counter + 1
                        output = np.vstack((output, item))

        if counter < 1:
            continue

        output = np.delete(output, (0), axis=0)
        new_out =  unique_rows(output)
        new_sum = new_out.sum(axis=0)
        avcounter += 1
        rule_out[FILENAME] = new_out

        print "#" * 60
        print "[ "+FILENAME+" ]"
        print Features
        print new_out
        print "\nSum of rule array (which features are used most?)"
        print new_sum
        print "\nNumber of rule combinations: %d" % new_out.shape[0]
        print "Number of used features: %d" % np.count_nonzero(new_sum)
        print "#" * 60 + "\n"

    return rule_out

def remove_file_by_ext(dir, ext):
    dirlist = os.listdir(dir)

    for item in dirlist:
        if item.endswith("."+ext):
            os.remove(os.path.join(dir, item))

def cleanup_csv(indir):
    answer = raw_input ("Do you want to clean up CSV files?(y/n): ")
    if answer is 'y' or answer is 'Y':
        print "Removing CSV files"
        remove_file_by_ext(indir, "csv")

def ret_filename_from_path(path):
    numdir = len(path.split('/'))
    lastword = path.split('/')[numdir-1].split('_')[1].split('.json')[0]
    return lastword

def ret_json_by_name(indir, sha1path, fname):
    """
    1. extract json names from sha1path
    """
    out = []

    f = open(sha1path,'r').readlines()
    for line in f:
        if fname+"_" in line:
            hashname = line.split('  ')[0]
            filename = os.path.join(indir, return_json_filename(hashname))
            out.append(filename)
    return out

def load_json_file(filename):
    with open(filename) as json_data:
        d = json.load(json_data)
        json_data.close()
    return d

def zerolist(n):
    listofzeros = [0] * n
    return listofzeros

def file_to_combination_list(filename):
    # return
    #print filename
    retlist = zerolist(NUM_FEATURE)
    if '_' not in filename:
        return retlist

    number = filename.split('_')[1].split('.')[0]

    if number is not "":
        for char in number:
            retlist[int(char)] = 1
    return retlist

def ret_boolean(inp):
    #print inp
    if inp is False:
        return 0
    elif inp is True:
        return 1

def load_sha1_table(filename):
    sha_to_file = {}
    file_to_sha = {}

    with open(filename) as f:
        for line in f:
            (key, val) = line.split()
            sha_to_file[key] = val
            file_to_sha[val] = key

    return sha_to_file, file_to_sha


def gen_csv(family_names, indir, sha1_path):

    for fname in family_names:
        jlist = ret_json_by_name(indir, sha1_path, fname)
        for jsonname in jlist:
            shaname = ret_filename_from_path(jsonname)
            apkname = sha_to_file[shaname]

            # error handling when json file not exist because of VT error
            if os.path.exists(jsonname):
                jsonobj = load_json_file(jsonname)
            else:
                continue

            combination_list = file_to_combination_list(apkname)

            for key in jsonobj['scans'].keys():
                result = ret_boolean(jsonobj['scans'][key]['detected'])
                combination_result = combination_list + [result]

                with open(indir+"/"+key+"_"+fname+".csv", 'a') as myfile:
                    wr = csv.writer(myfile)  #, quoting=csv.QUOTE_ALL)
                    wr.writerow(combination_result)
                    myfile.close()


if __name__ == "__main__":

    #### DEFINE PARSER #######################
    parser = argparse.ArgumentParser()
    parser.add_argument("-i", "--inputdir", dest="indir", type=str,
                        default=None,
                        help="Input dir with APK and JSON", required=True)
    parser.add_argument("-o", "--output-file", dest="outfile", type=str,
                        default=None, help="APK output directory")
    args = parser.parse_args()

    indir = args.indir
    if args.outfile == None:
        outfile = DEFAULT_OUTPUT
    else:
        outfile = args.outfile
    #### END PARSER ##########################

    cleanup_csv(indir)

    sha1_path = indir+"/"+SHA1SUM
    #jsonlist = load_file_list(indir, '.json')

    # collect basic information
    apklist = load_filelist_with_extension(indir, "apk")
    jsonlist = load_filelist_with_extension(indir, "json")
    avlist = return_avlist(jsonlist)

    sha_to_file, file_to_sha = load_sha1_table(sha1_path)
    family_names = ret_family_names(sha1_path)

    # generate csv files for each AV and malware faimly
    gen_csv(family_names, indir, sha1_path)
    csvlist = load_filelist_with_extension(indir, "csv")

    #familylist = ret_family_names(indir+"/"+SHA1SUM)
    Features = gen_feature_arr()
    rule_out = infer_rule(avlist, family_names)
    rule_out["avlist"] = avlist

    # store_array_to_file
    pickle_file = outfile + '.pkl'
    with open(pickle_file, 'wb') as f:
        print "[*] Storing Inferred rule to => %s" % pickle_file
        pickle.dump(rule_out, f, pickle.HIGHEST_PROTOCOL)
