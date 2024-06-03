#!/bin/sh
#
${THOME}/build/unpack gnureadline-8.1.2
cd gnureadline-8.1.2
#
# we need -m64 in CFLAGS here because it's passed through to the
# build of the private copy of readline
#
env CFLAGS="-m64 -I/usr/gnu/include" LDFLAGS="-L/usr/gnu/lib/`isainfo -k` -R/usr/gnu/lib/`isainfo -k`" /usr/versions/python-3.12/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.12/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBgnureadline-python-312 /tmp/pil
cd ..
rm -fr /tmp/pil
