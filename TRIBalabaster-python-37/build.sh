#!/bin/sh
#
${THOME}/build/unpack alabaster-0.7.12
cd alabaster-0.7.12
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBalabaster-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
