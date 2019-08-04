#!/bin/sh
#
${THOME}/build/unpack PySocks-1.7.0
cd PySocks-1.7.0
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpysocks-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
