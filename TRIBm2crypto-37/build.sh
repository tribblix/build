#!/bin/sh
#
${THOME}/build/unpack M2Crypto-0.36.0
cd M2Crypto-0.36.0
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBm2crypto-37 /tmp/pil
cd ..
rm -fr /tmp/pil
