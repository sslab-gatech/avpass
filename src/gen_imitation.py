import os
import sys
import pickle
import argparse

""" MEMO 
1. generation of empty APK 
2. remove external python execution if possible
3. remove bash command like mkdir or rm (can use python lib for windows)
4. incorporate conf.py if possible because user will define own
   inferring_feature list
"""

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
    parser.add_argument("-r", "--rules", dest="rule", type=str,
                        default="inferred_rules.pkl",
                        help="rule combinations")

    args = parser.parse_args()

    apk = args.apk
    empty = args.empty
    rule = args.rule

    # unpack empty apk
    #os.system('apktool d ./{} -o temp_empty'.format(empty))
    os.system('tools/apktool d {} -o temp_empty'.format(empty))

    # unpack input apk & feature extraction
    #os.system('apktool d ./{} -o temp_apk'.format(apk))
    os.system('tools/apktool d {} '.format(apk))
    apkname = apk[:-4]
    apkname = apkname.split('/')[-1]
    os.system('python modules/imitation/feature_extract.py {}'.format(apkname))
    os.system('mkdir out')

    # get rules
    with open(rule, 'rb') as f:
        rules = pickle.load(f)

    avlist = rules['avlist']

    # run imitation mode
    RULE_TABLE = ['string', 'variable', 'class',
                  'package', 'api', 'permission',
                  'resource']

    k = set([])
    for av in avlist:
        if av not in rules: continue
        rs = rules[av]
        
        for r in rs:
            k.add(tuple(r))

    for r in k:
        args = ''
        for i in xrange(len(RULE_TABLE)):
            if r[i] == 1:
                args += ' ' + RULE_TABLE[i]
        os.system('python modules/imitation/feature_insert.py {} temp_empty {}'\
                    .format(apkname, args))

    os.system('rm -rf temp_empty {}'.format(apkname))
