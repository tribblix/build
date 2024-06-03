#!/bin/sh
#
${THOME}/build/unpack principalmapper-1.1.5
cd principalmapper-1.1.5
/usr/versions/python-3.12/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.12/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpmapper-python-312 /tmp/pil
cd ..
rm -fr /tmp/pil
