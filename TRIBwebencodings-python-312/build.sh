#!/bin/sh
#
${THOME}/build/unpack webencodings-0.5.1
cd webencodings-0.5.1
/usr/versions/python-3.12/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.12/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBwebencodings-python-312 /tmp/pil
cd ..
rm -fr /tmp/pil
