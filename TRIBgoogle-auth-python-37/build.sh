#!/bin/sh
#
${THOME}/build/unpack google-auth-1.20.0
cd google-auth-1.20.0
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBgoogle-auth-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
