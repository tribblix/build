#!/bin/sh
#
${THOME}/build/unpack pycparser-2.19
cd pycparser-2.19
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpycparser-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
