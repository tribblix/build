#!/bin/sh
#
${THOME}/build/unpack commonmark-0.9.1
cd commonmark-0.9.1
/usr/versions/python-3.11/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.11/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBcommonmark-python-311 /tmp/pil
cd ..
rm -fr /tmp/pil
