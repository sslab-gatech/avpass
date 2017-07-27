
# how to make template?

Basically what you should do is to make an empty apk which contains ```MainActivity``` and ```onCreate()``` method in it. Anything other than this could become a malicious signature / could affect the results, so we just want not to include any layout, library, icon, image, etc.

Start a new project.

<img src="https://github.com/sslab-gatech/avpass/blob/master/docs/image/imitation1.png" alt="" width="500" align="center">

Put some random names in Application name and Company domain. If you send this empty apk to VirusTotal frequently (with some malicious features injected to it) it is likely that your application name and company domain are registered as malicious signatures by AV companies. So create a new empty apk with different names and domains after send it to VirusTotal.

![](./image/imitation2.png "Project name")

Pick Minimum SDK. It looks like it does not affect the result.

![](./image/imitation3.png "Project type")

Choose Empty Activity.

![](./image/imitation4.png "Empty activity")

Activity name must be ```MainActivity```. You do not need to generate Layout File. Also, you do not need to support Backwards Compat. Layout and Backward Compat library increase the size of your empty apk. It looks like these basic libraries and layouts included in an empty apk do not affect the results, but we are not sure about it.

![](./image/imitation5.png "MainActivity")

There must be ```onCreate()``` method in you ```MainActivity```.

![](./image/imitation6.png "OnCreate")

Now you can build it with or without ```ProGuard```.

![](./image/imitation7.png "apk file")
