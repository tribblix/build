#!/bin/sh
#
${THOME}/build/unpack tornado-5.1
cd tornado-5.1
/usr/versions/python-3.6/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.6/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBtornado-python-36 /tmp/pil
cd ..
rm -fr /tmp/pil
