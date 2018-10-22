#!/bin/sh
#
${THOME}/build/unpack passlib-1.7.1
cd passlib-1.7.1
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpasslib-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
