#!/bin/sh
#
${THOME}/build/unpack mcross-0.5.18
cd mcross-0.5.18
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBmcross-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
