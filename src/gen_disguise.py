import sys, os
import copy, shutil
import argparse
import pickle
import numpy as np
from itertools import combinations

sys.path.append('./modules')
from conf import *
from common import *

NUM_OBFUS = len(OBFUSCATION_LIST)
NUM_FEATURE = len(INFERRING_LIST)
TEMP_DIR = "temp_obfus"
DEFAULT_RULE_FILE = "inferred_rules.pkl"

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

def ret_combination(number):
	input = list(range(0,number))
	output = sum([map(list, combinations(input, i)) \
		for i in range(len(input) + 1)], [])
	return output

def execute_selected_obfuscation(apkname):
	for item in range(NUM_OBFUS):
		print ret_command(OBFUSCATION_LIST[item] ,apkname)		
		os.system(ret_command(OBFUSCATION_LIST[item] ,apkname))
		
def obfuscation_with_rules(lists, apkname):
	for item in lists:
		print ret_command(INFERRING_LIST[item] ,apkname)		
		os.system(ret_command(INFERRING_LIST[item] ,apkname))

def extract_smali(target, output):
	if not os.path.exists(target):
		print "[*] Decoding apk file to smali"
		os.system('apktool d ./'+target+'.apk -o' + output)

def build_apk(target, filename, postfix = ""):
	if postfix is not "":
		filename = filename + "_" + postfix + ".apk"
	print "Generating %s" % filename
	#print 'apktool b '+ target + " -o " + filename
	os.system('apktool b '+ target + " -o " + filename)

def one_array(number):
	out = []
	for x in range(number):
		out.append(1)
	return out

def unique_rows(a):
	a = np.ascontiguousarray(a)
	unique_a = np.unique(a.view([('', a.dtype)]*a.shape[1]))

	return unique_a.view(a.dtype).reshape((unique_a.shape[0], a.shape[1]))

def union_from_target(rulefile, target_name):
	"Union rules and extract unique rules"

	f = open(rulefile,'rb')
	storedrule = pickle.load(f)

	output = np.array(one_array(NUM_FEATURE))  # init with 1-row
	for name in target_name:
		try:
			temp =  storedrule[name]
			output = np.vstack((output, temp))
		except:
			pass
		
	output = np.delete(output, (0), axis=0) # remove 1-row
	unique_out =  unique_rows(output)
	return unique_out

def load_av_list(rulefile):
	"return avlist from inferred rules"
	out = []
	f = open(rulefile,'rb')
	storedrule = pickle.load(f)

	avlist = storedrule['avlist']

	counter = 0
	for item in avlist:
		out.append(str(counter)+"."+item)
		counter += 1

	return avlist, out

def transfer_np_to_arr(nparr):
	out = []
	for x in range(NUM_FEATURE):
		if nparr[x] == 1:
			out.append(x)
	return out

def rule_to_combination(union_rule):
	combinations = []
	for item in union_rule:
		combinations.append(transfer_np_to_arr(item))
	return combinations

def process_selection(selection, avlist):
	out = []
	outname = []

	if selection == "all":
		for x in range(len(avlist)):
			out.append(x)
			outname.append(avlist[x])
			x += 1
	else:
		selection = selection.strip()
		if ' ' in selection:
			selist = selection.split(' ')
			for item in selist:
				out.append(int(item))
				outname.append(avlist[int(item)])
		elif selection == '':
			print "No input, now finish this..."
			exit()
		else:
			out.append(int(selection))
			outname.append(avlist[int(selection)])
	return out, outname

def user_target_av_selection(rulefile):
	choice = []
	avlist, av_with_num = load_av_list(rulefile)
	print "==========="
	print "  AVLIST   "
	print "==========="

	for i in range(len(av_with_num)/5+1):
		print " ".join(av_with_num[i*5:(i+1)*5])

	print "\n\nWhich AVs do you want to bypass? (all or numbers)"
	print "  e.x) all"
	print "  e.x) 1 3 4 5"
	selection = raw_input ("Input your selection: ")

	choice, choice_name = process_selection(selection, avlist)
	return choice, choice_name
	
if __name__ == "__main__":

	############## DEFINE PARSER #######################
	parser = argparse.ArgumentParser()
	parser.add_argument("-i", "--inputfile", dest="infile", type=str,
	                             default=None, help="APK input filename", required=True)
	
	subparsers = parser.add_subparsers(title='arguments')
	
	cp = subparsers.add_parser('withrule', \
		help='Obufscation with inferred rules', add_help=False)
	cp.add_argument("-o", "--outputdir", dest="outdir", type=str,
	                             default=None, help="APK output directory",required=True)
	cp.add_argument("-r", "--rulefile", dest="rulefile", type=str,
	                             default=None, help="Rulefile(pickle) path")
	cp.set_defaults(action='withrule')

	lp = subparsers.add_parser('individual', \
		help='Obufscation with inferred rules', add_help=False)
	lp.add_argument("-o", "--outputfile", dest="outfile", type=str,
	                             default=None, help="APK output filename")
	lp.set_defaults(action='individual')

	args = parser.parse_args()
	############## END PARSER ##########################

	if args.action == "individual":

		infile = args.infile
		if args.outfile == None:
			outfile = remove_dot_from_filename(infile)+"_obfus.apk"
		else:
			outfile = args.outfile

		# prepare smali and its directory
		apkname = remove_dot_from_filename(infile)
		working_dir = TEMP_DIR
		if os.path.exists(working_dir):
			shutil.rmtree(working_dir)
		extract_smali(apkname, TEMP_DIR)

		# execute obfuscation
		execute_selected_obfuscation(working_dir)	
		
		# make APK and remove working directory
		build_apk(working_dir, outfile)
		if os.path.exists(working_dir):
			shutil.rmtree(working_dir)

	elif args.action == "withrule":
		infile = args.infile
		outdir = args.outdir
		if args.rulefile == None:
			rulefile = DEFAULT_RULE_FILE
		else:
			rulefile = args.rulefile

		# prepare smali and its directory
		apkname = remove_dot_from_filename(infile)
		working_dir = TEMP_DIR
		if os.path.exists(working_dir):
			shutil.rmtree(working_dir)
		extract_smali(apkname, TEMP_DIR)

		# input user and return targeting AV list
		target_list, target_name = user_target_av_selection(rulefile)

		# find union of bypassing rules, and then find unique rules
		union_rule = union_from_target(rulefile, target_name)		
		combinations = rule_to_combination(union_rule)
		
		for lists in combinations:

			working_dir = outdir+"/"+TEMP_DIR
			if os.path.exists(working_dir):
				shutil.rmtree(working_dir)
			shutil.copytree(TEMP_DIR, working_dir)

			obfuscation_with_rules(lists, working_dir)
			postfix = ''.join(map(str, lists))
			build_apk(working_dir, outdir+"/"+apkname, postfix)

			if os.path.exists(working_dir):
				shutil.rmtree(working_dir)

		if os.path.exists(TEMP_DIR):
			shutil.rmtree(TEMP_DIR)				
			