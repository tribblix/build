#!/bin/sh
#
# (built in python)
#
${THOME}/build/unpack scons-4.0.1
cd SCons-4.0.1
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/sc1
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/sc1
${THOME}/build/create_pkg TRIBscons /tmp/sc1
cd ..
rm -fr /tmp/sc1
