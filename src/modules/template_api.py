#!/usr/bin/env python2

from random import randint
import random


words = ['person', 'year', 'world', 'child', 'woman', 'place', 'week', 'case', 'point',
    'number', 'group', 'problem', 'fact', 'part', 'hand', 'life', 'thing', 'stack', 'jobs'
    , 'docu', 'users', 'every', 'develop', 'build', 'apks']

# java(1)
JAVA_API = """
# add java #
    new-instance {1}, Ljava/lang/Object;
    invoke-direct {{1}}, Ljava/lang/Object;-><init>()V        
"""

# android(1)
ANDROID_API = """
# add android #
    new-instance {1}, Landroid/text/format/DateFormat;
    invoke-direct {{1}}, Landroid/text/format/DateFormat;-><init>()V

"""

# android_old(1)
ANDROID_API_OLD = """
# add android #
    const-string {1}, "TAG"
    invoke-static {{1}, {1}}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
"""

# org.apache(1)
APACHE_API = """
# add apache #
    new-instance {1}, Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-direct {{1}}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V    
"""

# javax (1)
JAVAX_API = """
# add javax #
    new-instance {1}, Ljavax/crypto/NullCipher;
    invoke-direct {{1}}, Ljavax/crypto/NullCipher;-><init>()V
    .local {1}, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {{1}}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;    
"""

# json (1)
JSON_API = """
# add json #
    new-instance {1}, Lorg/json/JSONObject;
    invoke-direct {{1}}, Lorg/json/JSONObject;-><init>()V
    .local {1}, "jo":Lorg/json/JSONObject;
    invoke-virtual {{1}}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;    
"""

# junit (2)
JUNIT_API = """
# add junit #
    const-string {1}, "test"
    invoke-static {{1}}, Ljunit/framework/TestSuite;->warning(Ljava/lang/String;)Ljunit/framework/Test;
"""

# xml (3)
XML_API2 = """
# add xml #
    new-instance {1}, Lorg/xml/sax/InputSource;
    new-instance {2}, Ljava/io/StringReader;
    const-string {3}, "anystr"
    invoke-direct {{2}, {3}}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
    invoke-direct {{1}, {2}}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V    
"""

XML_API = """
# add xml #
    new-instance {1}, Lorg/xml/sax/InputSource;
    invoke-direct {{1}}, Lorg/xml/sax/InputSource;-><init>()V
    .local {1}, "a":Lorg/xml/sax/InputSource;
"""


# org.w3c.dom(3) : not sure about this code
DOM_API = """
# add dom #
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    move-result-object {1}
    .local {1}, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {{1}}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    move-result-object {2}
    .local {2}, "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    const-string {3}, ""
    invoke-virtual {{2}, {3}}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .end local {1}
    .end local {2}
    .end local {3}
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    return v0
    :catch_0    
    move-exception {3}        

"""

DOM_API2 = """
# add dom #
    new-instance {1}, Lorg/w3c/dom/DOMException;
    const-string {3}, ""
    invoke-direct {{1}, {2}, {3}}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V
    .local {1}, "e":Lorg/w3c/dom/DOMException;
    .end local {1}    # "e":Lorg/w3c/dom/DOMException;
    .end local {2}    # "temp":S

"""


STRING = """
    move-object/from16 {1}, {0}
    const/4 {2}, 0x0
    invoke-static {{1}, {2}}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    move-result-object {2}
    new-instance {1}, Ljava/lang/String;
    invoke-direct {{1}, {2}}, Ljava/lang/String;-><init>([B)V
    move-object/from16 {0}, {1}

"""
# smali instruction that requires one available register


register1 = [JAVA_API, ANDROID_API, APACHE_API, JAVAX_API, JSON_API, JUNIT_API, XML_API]

codes = {}
codes["java"] = JAVA_API
codes["android"] = ANDROID_API
codes["javax"] = JAVAX_API
codes["json"] = JSON_API
codes["junit"] = JUNIT_API
codes["apache"] = APACHE_API
codes["xml"] = XML_API
codes["dom"] = DOM_API
codes["string"] = STRING


def ret_random_words(num):
    num_word = len(words)
    nums = random.sample(words, num)
    
    output = []
    for word in nums:
        output.append(word)
    return output

def ret_random_word():
    num_word = len(words)
    out = random.sample(words, 1)[0]
    return out

def gen_string(input_reg):
    code = codes["string"]

    inp_reg = "v%d" % input_reg
    code = code.replace('{0}', inp_reg)
    code = code.replace('{1}', 'v0')
    code = code.replace('{2}', 'v1')
    return code

def gen_code(maxnum, inputcode, num_pert=None):
    var = []
    output = ""
    for i in xrange(5):
        var.append("v%d" % (maxnum + i))

    code = codes[inputcode]
    for i in xrange(len(var)):        
        code = code.replace("{%d}" % i, var[i])

    if num_pert is None:
        counter = 10
    else:
        counter = num_pert

    for i in xrange(0, counter, 1):        
        output = output + code

    return output


def gen_random_code(num, max_register):
    var = []
    for i in xrange(5):
        var.append("v%d" % (num + i))
    
    #code = ""

    if max_register == 1:
        code = register1[ randint(0,len(register1)-1) ]
        #print code

    elif max_register == 2:
        code = register2[ randint(0,len(register2)-1) ]
        #print code

    elif max_register == 3:
        code = register3[ randint(0,len(register3)-1) ]
        #print code

    for i in xrange(len(var)):
        code = code.replace("{%d}" % i, var[i])
    return code



