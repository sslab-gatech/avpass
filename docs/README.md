
# Installation

For the initial version of AVPASS, we assumes that user is using Linux or MAC. However, since we tried to avoid using OS specific commands or libraries, we will support Windows users in the near future. 

Visit the main directory of repository and run the script. It will install all necessary libraries. 

```
./install-dep.sh
```

If this script doesn't work for your envorinment and if you find any problem regarding library, you can install these libraries manually. Don't worry. We didn't use many libraries. These are the list:

  * main problem (python2): https://www.python.org/downloads/
  * apktool: https://ibotpeaches.github.io/Apktool/
  * numpy: http://www.numpy.org/
  * PIL: http://www.pythonware.com/products/pil/
  * magic: https://pypi.python.org/pypi/python-magic
  * python-utils: https://pypi.python.org/pypi/python-utils/2.1.0

# Obfuscate invividual APK

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

* Trouble with running after obfuscation?

The most frequent problem was signing the APK after obfuscation. 


3. Generate malware variation

4. Inferring AV's rules

5. Obfuscate by using inferred rules

6. Imitation Mode support 
To use `Imitation Mode`, you have to define your own template for accurate test result. The step by step for this is available in [How to make own template](Template.md)
