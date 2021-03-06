#!/bin/sh
#
${THOME}/build/unpack gnureadline-6.3.3
cd gnureadline-6.3.3
#
# we need -m64 in CFLAGS here because it's passed through to the
# build of the private copy of readline
#
env CFLAGS="-m64 -I/usr/gnu/include" LDFLAGS="-L/usr/gnu/lib/`isainfo -k` -R/usr/gnu/lib/`isainfo -k`" /usr/versions/python-3.9/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.9/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBgnureadline-python-39 /tmp/pil
cd ..
rm -fr /tmp/pil
