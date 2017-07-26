import sys, os
import copy, shutil
import argparse
import itertools
from itertools import combinations

sys.path.append('./modules')
from conf import *
from common import *

NUM_OBFUS = len(INFERRING_LIST)
TEMP_DIR = "temp_obfus"

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
	inputdata = list(range(0,number))
	combs = []

	for i in xrange(1, len(inputdata)+1):
		els = [list(x) for x in itertools.combinations(inputdata, i)]
		combs.extend(els)
	return combs

def execute_selected_obfuscation(lists, apkname):
	for item in lists:
		print ret_command(INFERRING_LIST[item] ,apkname)		
		os.system(ret_command(INFERRING_LIST[item] ,apkname))

def extract_smali(indir, target):
	if not os.path.exists(target):
		print "[*] Decoding apk file to smali"
		#os.system('apktool d ./'+target+'.apk -o' + indir+"/"+target)
		os.system('apktool d ./'+indir+"/"+target+'.apk -o' + indir+"/"+target)

def build_apk(target, name, postfix):
	filename = name + "_" + postfix + ".apk"
	print "Generating %s" % filename
	os.system('apktool b '+ target + " -o " + filename)
	
if __name__ == "__main__":

	#### DEFINE PARSER
	parser = argparse.ArgumentParser()
	parser.add_argument("-i", "--inputdir", dest="indir", type=str,
	                             default=None, help="APK input direcotry", required=True)
	parser.add_argument("-o", "--outputdir", dest="outdir", type=str,
	                             default=None, help="APK output directory", required=True)
	args = parser.parse_args()
	#### END PARSER
	indir = args.indir
	outdir = args.outdir

	# ctrl-c handler
	original_sigint = signal.getsignal(signal.SIGINT)
	signal.signal(signal.SIGINT, exit_gracefully)

	filelist = load_filelist_with_extension(indir, "apk")
	for filename in filelist:
		combinations = []
		print filename
		apkname = remove_dot_from_filename(filename)
		print apkname
		extract_smali(indir, apkname)

		# generate all combinations
		combinations = ret_combination(NUM_OBFUS)
	
		# e.g., custom combinations
		#combinations = [[0,1,2,3,4,5,6]]
		#combinations = [[0,1,2,3,4], [0,1,2,3,4,5,6]]

		for lists in combinations:

			working_dir = indir+"/"+TEMP_DIR
			if os.path.exists(working_dir):
				shutil.rmtree(working_dir)
			shutil.copytree(indir+"/"+apkname, working_dir)

			execute_selected_obfuscation(lists, working_dir)
			postfix = ''.join(map(str, lists))
			build_apk(working_dir, outdir+"/"+apkname, postfix)

			if os.path.exists(working_dir):
				shutil.rmtree(working_dir)

		if os.path.exists(indir+"/"+apkname):
			shutil.rmtree(indir+"/"+apkname)				
