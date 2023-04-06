#!/bin/sh
#
${THOME}/build/unpack tornado-6.2
cd tornado-6.2
/usr/versions/python-3.11/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.11/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBtornado-python-311 /tmp/pil
cd ..
rm -fr /tmp/pil
