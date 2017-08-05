
import logging

# temporary dirname when process each smali file
TEMP_DIR_NAME = "tmpclass/" 
LIB = "./lib"
BENIGN_CLASS_DIR = "./modules/benign_classes"

# define logger
logging.basicConfig(format='%(levelname)s:%(message)s', level=logging.INFO)

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
#OBFUSCATION_LIST = [API_REFLECTION]
#OBFUSCATION_LIST = [API_REFLECTION, STRING, VARIABLE]
#OBFUSCATION_LIST = [API_REFLECTION, STRING, VARIABLE, PCM]
OBFUSCATION_LIST = [API_REFLECTION, STRING, VARIABLE,\
                   RESOURCE_IMAGE+RESOURCE_XML]
#OBFUSCATION_LIST = [API_REFLECTION, STRING, VARIABLE, PCM, \
#                   RESOURCE_IMAGE+RESOURCE_XML]
#OBFUSCATION_LIST = [API_REFLECTION, STRING, STRING]
#OBFUSCATION_LIST = [BEN_PERMISSION, BENIGN_CLASS]

# Inferring Group
INFERRING_LIST  = [API_REFLECTION, STRING, VARIABLE, PCM, BENIGN_CLASS, \
                   RESOURCE_IMAGE+RESOURCE_XML, RM_PERMISSION]

BLACKLIST_STRING = []
BLACKLIST_API    = []