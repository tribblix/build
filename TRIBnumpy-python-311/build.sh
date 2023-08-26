#!/bin/sh
#
# needs a patch to restore sanity to the compilation environment
#
${THOME}/build/unpack numpy-1.25.2
cd numpy-1.25.2
$THOME/build/patches/numpy-1.25.2.preconf
env CXX="g++ -m64" CC="gcc -m64" /usr/versions/python-3.11/bin/python3 setup.py build -j 4
rm -fr /tmp/hg1
env CXX="g++ -m64" CC="gcc -m64" /usr/versions/python-3.11/bin/python3 setup.py install --root=/tmp/hg1
${THOME}/build/create_pkg TRIBnumpy-python-311 /tmp/hg1
cd ..
rm -fr /tmp/hg1
