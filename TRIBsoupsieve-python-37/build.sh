#!/bin/sh
#
${THOME}/build/unpack soupsieve-1.9.5
cd soupsieve-1.9.5
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBsoupsieve-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
