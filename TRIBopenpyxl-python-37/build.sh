#!/bin/sh
#
${THOME}/build/unpack openpyxl-2.5.9
cd openpyxl-2.5.9
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBopenpyxl-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
