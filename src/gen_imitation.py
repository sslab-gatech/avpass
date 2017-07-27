import os
import sys
import pickle
import argparse
import itertools

sys.path.append('./modules/imitation')
import feature_extract
import feature_insert


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument("-i", "--inputapk", dest="apk", type=str,
                        default=None, 
                        help="features will be extracted from this apk",
                        required=True)
    parser.add_argument("-e", "--emptyapk", dest="empty", type=str,
                        default=None,
                        help="features will be inserted to this apk",
                        required=True)
    parser.add_argument("-n", "--ncombinations", dest="N", type=int,
                        default=None,
                        help="number of features",
                        required=True)
    #parser.add_argument("-r", "--rules", dest="rule", type=str,
    #                    default="inferred_rules.pkl",
    #                    help="rule combinations")

    args = parser.parse_args()

    apk = args.apk
    empty = args.empty
    N = args.N
    #rule = args.rule

    apkname = apk[:-4]
    apkname = apkname.split('/')[-1]

    # unpack empty apk
    os.system('tools/apktool d {} -o temp_empty'.format(empty))

    # unpack input apk & feature extraction
    os.system('tools/apktool d {} '.format(apk))

    feature_extract.extractall(apkname)
    os.mkdir('out')

    # get rules
    #with open(rule, 'rb') as f:
    #    rules = pickle.load(f)

    #avlist = rules['avlist']

    # run imitation mode
    #k = set([])
    #for av in avlist:
    #    if av not in rules: continue
    #    rs = rules[av]
    #    
    #    for r in rs:
    #        k.add(tuple(r))

    k = []
    for x in itertools.combinations(range(7), N):
        r = [0] * 7
        for i in x:
            r[i] = 1
        k.append(r)

    for r in k:
        flag = 0
        for i in xrange(len(r)):
            if r[i] == 1:
                flag += 2**i
        feature_insert.do_add(apkname, 'temp_empty', 'temp_{}'.format(apkname), flag)

    os.system('rm -rf temp_empty {}'.format(apkname))
