#!/bin/sh
#
# (built in python)
#
${THOME}/build/unpack scons-2.5.1
cd scons-2.5.1
python setup.py build
rm -fr /tmp/sc1
python setup.py install --root=/tmp/sc1
${THOME}/build/create_pkg TRIBscons /tmp/sc1
cd ..
rm -fr /tmp/sc1
