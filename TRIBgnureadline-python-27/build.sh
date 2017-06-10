#!/bin/sh
#
${THOME}/build/unpack gnureadline-6.3.3
cd gnureadline-6.3.3
env CFLAGS=-I/usr/gnu/include LDFLAGS="-L/usr/gnu/lib -R/usr/gnu/lib" python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBgnureadline-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
