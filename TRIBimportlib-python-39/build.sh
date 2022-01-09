#!/bin/sh
#
${THOME}/build/unpack importlib_metadata-4.10.0
cd importlib_metadata-4.10.0
/usr/versions/python-3.9/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.9/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBimportlib-python-39 /tmp/pil
cd ..
rm -fr /tmp/pil
