#!/bin/sh
#
${THOME}/build/unpack numpy-1.20.1
cd numpy-1.20.1
env CC="gcc -m64" /usr/versions/python-3.9/bin/python3 setup.py build -j 4
rm -fr /tmp/hg1
env CC="gcc -m64" /usr/versions/python-3.9/bin/python3 setup.py install --root=/tmp/hg1
${THOME}/build/create_pkg TRIBnumpy-python-39 /tmp/hg1
cd ..
rm -fr /tmp/hg1
