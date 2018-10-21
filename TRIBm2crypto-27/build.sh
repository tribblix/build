#!/bin/sh
#
${THOME}/build/unpack M2Crypto-0.30.1
cd M2Crypto-0.30.1
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBm2crypto-27 /tmp/pil
cd ..
rm -fr /tmp/pil
