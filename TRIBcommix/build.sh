#!/bin/sh
#
# depends on python
# needs the gnureadline module
#
${THOME}/build/unpack commix-3.3
cd commix-3.3
/usr/versions/python-3.9/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.9/bin/python3 setup.py install --root=/tmp/ckx
${THOME}/build/create_pkg TRIBcommix /tmp/ckx
cd ..
rm -fr /tmp/ckx
