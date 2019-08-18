#!/bin/sh
#
${THOME}/build/unpack snowballstemmer-1.9.0
cd snowballstemmer-1.9.0
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBsnowballstemmer-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
