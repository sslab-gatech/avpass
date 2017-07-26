
# Installation

For the initial version of AVPASS, we assumes that user is using Linux or MAC. However, since we tried to avoid using OS specific commands or libraries, we will support Windows users in the near future. 

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

Let's test with example. Copy `facebook_opt.apk` malware into your `src` directory. Then run this script:

``` bash
$ python gen_disguise.py -i facebook_opt.apk individual
```

Then you will see `facebook_opt_obfus.apk` file. 

## Check your obfuscated malware to VirusTotal

You can query obfuscated malware to VirusTotal by using web interface (https://www.virustotal.com/). However, it's slow and difficult to automate. To make your life easier, we recommend you to acquire VirusTotal API and use command line interface. To know more information about VirusTotal, please visit this site: https://www.virustotal.com/nl/documentation/public-api/

Going back to the topic, you can query in console:

``` bash
$ vt -f facebook_opt_obfus.apk -j 
```

After about one minute, your can query the result using command:

``` bash
$ vt -fs facebook_opt_obfus.apk -j 
```

Finally, you will get result file (JSON format) and check which AV detected your obfuscated malware. 

## Trouble with running after obfuscation?

One most frequent problem happens due to missing sign the APK after obfuscation. To make the obfuscated APK runnable, you should do `zipalign` and `sign` the APK. 

- How to zipalign: https://developer.android.com/studio/command-line/zipalign.html
- How to sign apk: https://developer.android.com/studio/publish/app-signing.html

____

# Generate malware variation

To infer rules by using 2k factorial experiments, you need to put your malware as seed. Do you have malware samples? We recommend you to download samples from here. Note that we should use malware from different family for better inferring result. 

- DREBIN: https://www.sec.cs.tu-bs.de/~danarp/drebin/
- VirusShare: https://virusshare.com/

First, make input and output directory and copy your malware into the directory. Check your `conf.py` to include or exclude necessary obfuscations. Then execute `gen_variations.py` script. For example:

```
$ cd src
$ mkdir input
$ mkdir output

MODIFY YOUR conf.py

$ cp YOUR_MALWARE ./input/
$ python gen_variations -i input -o output
```

We recommend you to use at least 100 malware to infer detection rule combinations of AVs. 

____

# Inferring AV's rules


____
# Obfuscate by using inferred rules


____
# Imitation Mode support 

To use `Imitation Mode`, you have to define your own template for accurate test result. The step by step for this is available in [How to make own template](Template.md)
