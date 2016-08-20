#!/bin/sh
#
${THOME}/build/unpack reportlab-3.3.0
cd reportlab-3.3.0
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBreportlab-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
