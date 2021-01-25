#!/bin/sh
#
${THOME}/build/unpack wfuzz-2.4.7
cd wfuzz-2.4.7
/usr/versions/python-3.8/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.8/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBwfuzz-python-38 /tmp/pil
cd ..
rm -fr /tmp/pil
