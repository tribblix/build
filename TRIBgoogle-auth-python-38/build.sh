#!/bin/sh
#
${THOME}/build/unpack google-auth-1.21.3
cd google-auth-1.21.3
/usr/versions/python-3.8/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.8/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBgoogle-auth-python-38 /tmp/pil
cd ..
rm -fr /tmp/pil
