#!/bin/sh
#
${THOME}/build/unpack expiringdict-1.2.1
cd expiringdict-1.2.1
#
# dependencies are wrong for python3
#
sed -i '/typing/d' setup.py
/usr/versions/python-3.8/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.8/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBexpiringdict-python-38 /tmp/pil
cd ..
rm -fr /tmp/pil
