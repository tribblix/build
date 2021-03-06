#!/bin/sh
#
${THOME}/build/unpack scipy-1.6.1
cd scipy-1.6.1
#
# it's relatively hard work to get the build to be consistently 64-bit
#
env CC="gcc -m64" FFLAGS=-m64 FORTRANFLAGS=-m64 LDFLAGS=-m64 /usr/versions/python-3.8/bin/python3 setup.py build
rm -fr /tmp/pil
env CC="gcc -m64" FFLAGS=-m64 FORTRANFLAGS=-m64 LDFLAGS=-m64 /usr/versions/python-3.8/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBscipy-python-38 /tmp/pil
cd ..
rm -fr /tmp/pil
