#!/bin/sh
#
${THOME}/build/unpack browser-cookie3-0.12.1
cd browser-cookie3-0.12.1
/usr/versions/python-3.9/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.9/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBbrowser-cookie3-python-39 /tmp/pil
cd ..
rm -fr /tmp/pil
