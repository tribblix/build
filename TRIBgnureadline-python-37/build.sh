#!/bin/sh
#
${THOME}/build/unpack gnureadline-6.3.3
cd gnureadline-6.3.3
env CFLAGS=-I/usr/gnu/include LDFLAGS="-L/usr/gnu/lib -R/usr/gnu/lib" /usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBgnureadline-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
