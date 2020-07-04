#!/bin/sh
#
${THOME}/build/unpack cryptography-2.9.2
cd cryptography-2.9.2
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBcryptography-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
