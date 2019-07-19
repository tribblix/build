#!/bin/sh
#
${THOME}/build/unpack httpie-0.9.9
cd httpie-0.9.9
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBhttpie-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
