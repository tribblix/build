#!/bin/sh
#
${THOME}/build/unpack six-1.15.0
cd six-1.15.0
rm -fr /tmp/pil
/usr/versions/python-3.9/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBsix-python-39 /tmp/pil
cd ..
rm -fr /tmp/pil
