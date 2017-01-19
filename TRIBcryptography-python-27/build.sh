#!/bin/sh
#
${THOME}/build/unpack cryptography-1.7.1
cd cryptography-1.7.1
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBcryptography-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
