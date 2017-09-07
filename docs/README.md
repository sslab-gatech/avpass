
# NOTICE

Recently, we add new features (Java reflection, more complicated string encryptor) to bypass AVs better. Unfortunately, these new modules are not compatible with some previous modules. We didn't perform test much but we found one case of error. Since Java reflection hide all method names, `pcm` module (package/class/method name changer) can occur error when you run obfuscation APK. To solve this problem, we will quickly provide `package` module (package changer) for only obfuscating package when you already used Java reflection. 

Until the release, we recommend you use `pcm` module before the `Java reflection`. If you just try to infer AVs feature, it's fine to use without considering the order because apktool can compile the smali into APK anyway. 

# Installation

For the initial version of AVPASS, we assumes that user is using Linux or Mac. However, since we tried to avoid using OS specific commands or libraries, we will support Windows users in the near future. 

Visit the main directory of repository and run the script. It will install all necessary libraries. 

``` 
./install-dep.sh
```

If this script doesn't work for your envorinment and if you find any problem regarding library, you can install these libraries manually. Don't worry. We didn't use many libraries. These are the list:
  
  * apktool: https://ibotpeaches.github.io/Apktool/
  * numpy: http://www.numpy.org/
  * PIL: http://www.pythonware.com/products/pil/
  * magic: https://pypi.python.org/pypi/python-magic
  * python-utils: https://pypi.python.org/pypi/python-utils/2.1.0
  * vt: https://pypi.python.org/pypi/virustotal-api

We recommend you to make sure whether two tools (`apktool` and `vt`) are working correctly. If you execute commands, you should see these messages. 

```
$ apktool

Apktool v2.2.3 - a tool for reengineering Android apk files
with smali v2.2.1 and baksmali v2.2.1
Copyright 2014 Ryszard Wiśniewski <brut.alll@gmail.com>
Updated by Connor Tumbleson <connor.tumbleson@gmail.com>

```

```
$ vt -h

usage: value [-h] [-fi] [-udb USERDB] [-fs] [-f] [-fr] [-u] [-ur] [-d] [-i]
             [-w] [-s] [-si] [-et] [-ac] [-gc] [-v] [-j] [--csv] [-rr] [-rj]
             [-V] [-r] [-wh] [-wht] [-pdns] [--asn] [-aso] [--country]
             [--subdomains] [--domain-siblings] [-cat] [-alc] [-alk] [-opi]
             [--drweb-cat] [-adi] [-wdi] [-tm] [-wt] [-bd] [-wd] [-du]
             [--pcaps] [--samples] [-dds] [-uds] [-dc] [-uc] [-drs] [-urs]
             [-pe] [-esa SAVE_ATTACHMENT] [-peo]
             [value [value ...]]
```

____


# Obfuscate individual APK

## Change configuration

Let's start from obfuscating individual APK. First you need to set up your obfuscation. If you don't want, you can simply use default obfuscations which only include Java reflection, String encryption, Variable encryption, Package name change, Method name change, Class name change, and Resource obfuscation. 

Open the file: `src/conf.py`

``` python
# DEFINED COMMAND: preserve original functionality
STRING         = "python strp.py -f {1}.apk string -c no;"
VARIABLE       = "python strp.py -f {1}.apk variable -c no;"
PCM            = "python pcm.py  -f {1}.apk package -c no;"
BYTECODE       = "python pcm.py  -f {1}.apk insbyte -c no;"
BENIGN_CLASS   = "python pcm.py  -f {1}.apk bclass -c no;"
RESOURCE_IMAGE = "python res.py  -f {1} image -c no;"
RESOURCE_XML   = "python res.py  -f {1} resxml -c no -n no;"
API_INTER      = "python api.py  -f {1}.apk inter -a android -c no;"
BEN_PERMISSION = "python api.py  -f {1}.apk bpermission -c no;"
API_REFLECTION = "python refl.py -f {1}.apk reflect -c no;"

ANTI_DATAFLOW  = "WILL RELEASE AFTER ACADEMIC SUBMISSION PROCESS"
COMPONENT_DIV  = "WILL RELEASE AFTER ACADEMIC SUBMISSION PROCESS"
FAMILY_CHANGER = "WILL RELEASE AFTER ACADEMIC SUBMISSION PROCESS"


# DESTRUCTIVE OBFUSCATIONS: only for inferring feature's impact
RM_RESOURCE_PAYLOAD = "python res.py   -f {1} payload -c no;"
RM_APIS             = "python rmapi.py -f {1}.apk rmall -c no;"
RM_PERMISSION       = "python api.py   -f {1}.apk permission -c no;"


# Obfuscation Group for individual APK disguise
OBFUSCATION_LIST = [API_REFLECTION, STRING, VARIABLE, PCM, \
                   RESOURCE_IMAGE+RESOURCE_XML]


# Inferring Group
INFERRING_LIST  = [API_REFLECTION, STRING, VARIABLE, PCM, BENIGN_CLASS, \
                   RESOURCE_IMAGE+RESOURCE_XML, RM_PERMISSION]
```

We pre-defined several obfuscation modules here. You can modify `OBFUSCATION_LIST` for your obfuscation. Note that the order of list is the same as the order of obfuscation. For example, this configuration will start obfuscation from `Java Reflection`. 

## Launch individual obfuscation

Let's test with example. Copy any malware into your `src` directory. Then run this script:

``` 
# generate one individual obfuscated APK
$ python gen_disguise.py -i YOUR_MALWARE.apk individual
```

Then you will see `YOUR_MALWARE_obfus.apk` file. 

## Check your obfuscated malware to VirusTotal

You can query obfuscated malware to VirusTotal by using web interface (https://www.virustotal.com/). However, it's slow and difficult to automate. To make your life easier, we recommend you to acquire VirusTotal API and use command line interface. To know more information about VirusTotal, please visit this site: https://www.virustotal.com/nl/documentation/public-api/

Going back to the topic, you can query in console:

``` 
# Upload obfuscated APK
$ vt -f YOUR_MALWARE.apk -j 
```

After about one minute, your can query the result using command:

```
# Check the result
$ vt -fs YOUR_MALWARE.apk -j 
```

Finally, you will get result file (JSON format) and check which AV detected your obfuscated malware. 

## Trouble with running after obfuscation?

One most frequent problem happens due to missing sign the APK after obfuscation. To make the obfuscated APK runnable, you should do `zipalign` and `sign` the APK. 

- How to zipalign: https://developer.android.com/studio/command-line/zipalign.html
- How to sign apk: https://developer.android.com/studio/publish/app-signing.html

____

# Generate malware variation

## Collecting malware

To infer rules by using 2k factorial experiments, you need to put your malware as seed. Do you have malware samples? We recommend you to download samples from here. Note that we should use malware from different family for better inferring result. 

- DREBIN: https://www.sec.cs.tu-bs.de/~danarp/drebin/
- VirusShare: https://virusshare.com/

## Setup

First, make input and output directory and copy your malware into the directory. Check your `conf.py` to include or exclude necessary obfuscations. Especially, you should modify `INFERRING_LIST` to define your obfuscation. Then execute `gen_variations.py` script. For example:

```
$ cd src
$ mkdir input
$ mkdir output

MODIFY YOUR conf.py

$ cp YOUR_MALWARE ./input/
$ python gen_variations.py -i input -o output
```

## Query to VirusTotal

We recommend you to use at least 100 malware to infer detection rule combinations of AVs. Assume that you are obfuscating 100 malware with 7 obfuscation groups. For this case, AVPASS will generate 100 * 128 malware variations. We observed that such a large number malware generation takes several hours or days.

Did you finish variation generation? If yes, you can query the variations to VirusTotal. Since AVPASS knows about obfuscation by reading filename, you should not change obfuscated filename. You can use these commands to query and get result. 

```
# upload your APK
$ vt -f *.apk -j

After uploading all APKs

# download queried result
$ vt -fs *.apk -j
```

Now you downloaded all queried result of variations. Let's infer detection rules.
____

# Inferring AV's rules

## Assumption

1. Generated malware variations and queried the result from VirusTotal
2. Malware variation (APK) and queried result (JSON) are at the same directory

## Inferring

Once you finished query, inferring is simple! Run this script. Please make sure whether you satisfied the assumption above before run the script. 

```
# infer rules, assume that output directory has both APK and JSON
$ python infer_rules.py -i output
```

What can you see? You can see inferred rule combinations for each AV and also can check whether `inferred_rules.pkl` is generated. Well done so far! It's time to use inferred rule to bypass AV. 
____

# Obfuscate by using inferred rules

You can do targeted obfuscation using this command:

```
# Run targeted obfuscation
$ python gen_disguise.py -i YOUR_MALWARE withrule -o OUTPUT_DIR
```

If there is no problem so far, you will see this question from command line. 

```
===========
  AVLIST   
===========
0.Bkav 1.K7AntiVirus 2.MicroWorld-eScan 3.nProtect 4.CMC
5.CAT-QuickHeal 6.ALYac 7.Malwarebytes 8.Zillya 9.AegisLab
10.TheHacker 11.BitDefender 12.K7GW 13.Trustlook 14.Arcabit
15.Baidu 16.F-Prot 17.SymantecMobileInsight 18.Symantec 19.TotalDefense
20.TrendMicro-HouseCall 21.Avast 22.ClamAV 23.Kaspersky 24.Alibaba
25.NANO-Antivirus 26.ViRobot 27.Rising 28.Ad-Aware 29.Emsisoft
30.Comodo 31.F-Secure 32.DrWeb 33.VIPRE 34.TrendMicro
35.McAfee-GW-Edition 36.Sophos 37.Cyren 38.Jiangmin 39.Webroot
40.Avira 41.Antiy-AVL 42.Kingsoft 43.Microsoft 44.SUPERAntiSpyware
45.ZoneAlarm 46.GData 47.AhnLab-V3 48.McAfee 49.AVware
50.VBA32 51.WhiteArmor 52.Zoner 53.ESET-NOD32 54.Tencent
55.Yandex 56.Ikarus 57.Fortinet 58.AVG 59.Panda
60.CrowdStrike 61.Qihoo-360


Which AVs do you want to bypass? (all or numbers)
  e.x) all
  e.x) 1 3 4 5
Input your selection: 1 5 33 42

```

Select multiple numbers that you want to bypass or just type `all` to bypass them all. Your obfuscated APK will be stored in `OUTPUT_DIR`
____

# Imitation Mode support 

## What is *Imitation Mode*?

This is inverse of feature obfuscation. It other word, this mode adds malware's features to a empty application until we can find a set of obfuscation features to be detected. 

Assumes that you developed a malware and already obfuscated. You can query the APK to the VirusTotal but cannot guarantee 100% bypass. To support safe query in this situation, developer can use *Imitation Mode*. If obfuscated malware still has suspicious feature in `resource`, then the develop can incorporate the feature into fake malware automatically with the help of *Imitation Mode*. Once the developer queries the fake malware and confirms detections when the developer includes `resource`, then the developer proactively modify `resource` section. 

## Preparation 

To use `Imitation Mode`, you have to define your own template for accurate test result. The step by step for this is available in [How to make own template](Template.md)

Our empty APK templates are already registered as malicious pattern from multiple AV companies even though there was nothing in there! To handle this issue, we also changes empty APK template frequently. If you get multiple detections from AV company even though you didn't include anything, it means that you should change your template for better result. 

## Run *Imitation Mode*

Running is also easy. Run the below script. In this example, we picked up one obfuscated malware from malware variation generation process. In addition, we assumed that you finished generation of your own empty template APK. (name as empty.apk)

```
# run imitation mode and generate fake variations
# i: input file, -e name of empty APK, -n number of features when generate
python gen_imitation.py -i LifeMon.apk -e empty.apk -n 2

```

After finish the process, *Imitation Mode* will generate series of files. 

```
$ ls -1 |grep *.apk
LifeMon_24_0000011.apk
LifeMon_24_0000101.apk
LifeMon_24_0000110.apk
LifeMon_24_0001001.apk
LifeMon_24_0001010.apk
LifeMon_24_0001100.apk
LifeMon_24_0010001.apk
LifeMon_24_0010010.apk
LifeMon_24_0010100.apk
LifeMon_24_0011000.apk
LifeMon_24_0100001.apk
LifeMon_24_0100010.apk
LifeMon_24_0100100.apk
LifeMon_24_0101000.apk
LifeMon_24_0110000.apk
LifeMon_24_1000001.apk
LifeMon_24_1000010.apk
LifeMon_24_1000100.apk
LifeMon_24_1001000.apk
LifeMon_24_1010000.apk
LifeMon_24_1100000.apk
```

Here, `0` indicates that the specific feature has not included into the fake malware, whereas `1` indicates that the feature has included. By using the same query step, the malware developer can see which features are still detected by AV. 

# Limitations

AVPASS has several limitation that you should know. 

- AVPASS does not handle payload inside (especially APK/JAR/so/ZIP files in /resource, /assets, /libs). We recommend the developer to develop code inside of your class as possible and then AVPASS will obfuscate your code. 

- AVPASS is vulnerable to dynamic analysis. No matter how much you obfuscate, dynamic analysis will eventually find out original intention. 

- AVPASS itself can be malicious pattern in the near future as many developer use it. To handle this, we recommend you to change ROT function inside of `common.py` and empty APK template. 

- There are several cases when you incremantally obfuscate your APK and failed to execute run. This is also problem to us and try to fix several issues one by one. 
