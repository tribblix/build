#!/bin/sh
#
${THOME}/build/unpack Brotli-1.0.9
cd Brotli-1.0.9
/usr/versions/python-3.10/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.10/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBbrotli-python-310 /tmp/pil
cd ..
rm -fr /tmp/pil
