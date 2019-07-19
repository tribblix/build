#!/bin/sh
#
${THOME}/build/unpack RestrictedPython-4.0b2
cd RestrictedPython-4.0b2
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBrestricted-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
