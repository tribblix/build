#!/bin/sh
#
${THOME}/build/unpack google-api-python-client-1.12.8
cd google-api-python-client-1.12.8
/usr/versions/python-3.9/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.9/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBgoogle-api-python-39 /tmp/pil
cd ..
rm -fr /tmp/pil
