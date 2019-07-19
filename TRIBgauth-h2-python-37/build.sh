#!/bin/sh
#
${THOME}/build/unpack google-auth-httplib2-0.0.3
cd google-auth-httplib2-0.0.3
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBgauth-h2-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
