#!/bin/sh
#
rm -fr /tmp/dvp
mkdir -p /tmp/dvp/usr/bin
cd /tmp/dvp/usr/bin
wget https://raw.github.com/soxofaan/duviz/master/duviz.py
ln -s duviz.py duviz
chmod a+x duviz.py
${THOME}/build/create_pkg TRIBduviz /tmp/dvp
cd
rm -fr /tmp/dvp
