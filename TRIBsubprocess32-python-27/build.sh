#!/bin/sh
#
${THOME}/build/unpack subprocess32-3.5.4
cd subprocess32-3.5.4
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBsubprocess32-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
