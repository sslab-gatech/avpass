AVPASS
======

AVPASS is a tool for leaking the detection model of Android malware detection system. (i.e., antivirus software) and bypassing their detection logics by using the leaked information, coupled with APK obfuscation techniques. Not limited to detection features used by detection system, AVPASS can also infer detection rules so that it can disguise any Android malware as a benign application by automatically transforming the APK binary. To prevent leakage of the application logic during transformation, AVPASS provides an Imitation Mode that allows malware developers to safely query curious detection features without sending the entire binary.

AVPASS offers several useful features to transform any Android malware to bypass anti-virus softwares. These are main features of AVPASS:

- APK obfuscation with more than 10 modules
- Infers feature of detection system by using individual obfuscation
- Infers rules of detection system by using 2k factorial experiment
- Generates targeted obfuscation to bypass specific detection system
- Supports safe query by using Imitation Mode

DEMO
----

* Bypassing API-, Dataflor-, Interaction-based detection system
[![DEMO1](http://img.youtube.com/vi/6D1miTSRKA8/0.jpg)](http://www.youtube.com/watch?v=6D1miTSRKA8)

* Inferring and Bypassing AVs through VirusTotal
[![DEMO2](http://img.youtube.com/vi/GkMyobbyl88/0.jpg)](http://www.youtube.com/watch?v=GkMyobbyl88)

License
-------

This project is released under the [GPL license](./LICENSE).


Running & Docs
--------------

More documentation is available in [docs/README.md](docs/README.md).


Contact
-------

Send us email for any questions.

Main contact point: Jinho Jung (jinho.jung@gatech.edu)


Contribute
----------

If you want to contribute, please pick up something from our [Github issues](https://github.com/sslab-gatech/avpass/issues).

