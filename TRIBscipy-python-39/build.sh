#!/bin/sh
#
${THOME}/build/unpack scipy-1.6.1
cd scipy-1.6.1
#
# it's relatively hard work to get the build to be consistently 64-bit
#

#
# it only checks in /usr/lib by default, which won't work because we
# don't ship 32-bit openblas libraries, so tell it where to really look
#
echo "[openblas]" > site.cfg
echo "libraries = openblas" >> site.cfg
echo "library_dirs = /usr/lib/`$THOME/build/getarch`" >> site.cfg
echo "include_dirs = /usr/include" >> site.cfg

env CC="gcc -m64" FFLAGS=-m64 FORTRANFLAGS=-m64 LDFLAGS=-m64 /usr/versions/python-3.9/bin/python3 setup.py build
rm -fr /tmp/pil
env CC="gcc -m64" FFLAGS=-m64 FORTRANFLAGS=-m64 LDFLAGS=-m64 /usr/versions/python-3.9/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBscipy-python-39 /tmp/pil
cd ..
rm -fr /tmp/pil
