#!/bin/sh
#
${THOME}/build/unpack mail-parser-3.15.0
cd mail-parser-3.15.0
/usr/versions/python-3.9/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.9/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBmail-parser-python-39 /tmp/pil
cd ..
rm -fr /tmp/pil
