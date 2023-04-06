#!/bin/sh
#
${THOME}/build/unpack wfuzz-3.1.0
cd wfuzz-3.1.0
/usr/versions/python-3.11/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.11/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBwfuzz-python-311 /tmp/pil
cd ..
rm -fr /tmp/pil
