#!/bin/sh
#
${THOME}/build/unpack principalmapper-1.1.3
cd principalmapper-1.1.3
/usr/versions/python-3.9/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.9/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpmapper-python-39 /tmp/pil
cd ..
rm -fr /tmp/pil
