#!/bin/sh
#
${THOME}/build/unpack google-api-core-2.2.2
cd google-api-core-2.2.2
/usr/versions/python-3.9/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.9/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBgoogle-api-core-python-39 /tmp/pil
cd ..
rm -fr /tmp/pil
