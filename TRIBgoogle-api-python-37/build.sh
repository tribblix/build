#!/bin/sh
#
${THOME}/build/unpack google-api-python-client-1.8.4
cd google-api-python-client-1.8.4
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBgoogle-api-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
