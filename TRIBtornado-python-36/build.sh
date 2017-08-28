#!/bin/sh
#
${THOME}/build/unpack tornado-4.5.2
cd tornado-4.5.2
/usr/versions/python-3.6/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.6/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBtornado-python-36 /tmp/pil
cd ..
rm -fr /tmp/pil
