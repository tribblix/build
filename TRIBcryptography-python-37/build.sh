#!/bin/sh
#
${THOME}/build/unpack cryptography-2.7
cd cryptography-2.7
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBcryptography-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
