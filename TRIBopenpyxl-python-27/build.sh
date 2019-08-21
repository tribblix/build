#!/bin/sh
#
${THOME}/build/unpack openpyxl-2.6.3
cd openpyxl-2.6.3
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBopenpyxl-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
