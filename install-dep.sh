#!/bin/sh

# install python
sudo apt-get update
sudo apt-get install python2.7 python-pip python-dev

# install numpy
sudo apt-get install python-numpy

# install apktool
sudo cp -n ./bin/apktool* /usr/local/bin/

# install vt (virustotal API)
sudo pip install vt
sudo pip install python-magic

