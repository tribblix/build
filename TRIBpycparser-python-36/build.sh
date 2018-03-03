#!/bin/sh
#
${THOME}/build/unpack pycparser-2.18
cd pycparser-2.18
/usr/versions/python-3.6/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.6/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpycparser-python-36 /tmp/pil
cd ..
rm -fr /tmp/pil
