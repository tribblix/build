#!/bin/sh
#
${THOME}/build/unpack monotonic-1.5
cd monotonic-1.5
/usr/versions/python-3.9/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.9/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBmonotonic-python-39 /tmp/pil
cd ..
rm -fr /tmp/pil
