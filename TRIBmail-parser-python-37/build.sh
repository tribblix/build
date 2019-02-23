#!/bin/sh
#
${THOME}/build/unpack mail-parser-3.9.2
cd mail-parser-3.9.2
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBmail-parser-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
