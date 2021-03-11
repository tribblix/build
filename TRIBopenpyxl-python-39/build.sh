#!/bin/sh
#
${THOME}/build/unpack openpyxl-3.0.7
cd openpyxl-3.0.7
/usr/versions/python-3.9/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.9/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBopenpyxl-python-39 /tmp/pil
cd ..
rm -fr /tmp/pil
