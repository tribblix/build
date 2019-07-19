#!/bin/sh
#
# needs autoconf automake libtool installed
# zap install libtool
#
${THOME}/build/unpack pyjq-2.2.0
cd pyjq-2.2.0
#
# oh dear
#
gzcat dependencies/jq-1.5.tar.gz | gtar xf -
gsed -i /_XOPEN_SOURCE/d jq-jq-1.5/builtin.c
rm -f dependencies/jq-1.5.tar.gz
gtar cfz dependencies/jq-1.5.tar.gz jq-jq-1.5
rm -fr jq-jq-1.5
#
# those aren't makefiles, they're gnu makefiles
# install appears to repeat the build
#
env PATH=/usr/gnu/bin:$PATH /usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
env PATH=/usr/gnu/bin:$PATH /usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpyjq-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
