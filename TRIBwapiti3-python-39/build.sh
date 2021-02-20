#!/bin/sh
#
${THOME}/build/unpack wapiti3-3.0.4
cd wapiti3-3.0.4
/usr/versions/python-3.9/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.9/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBwapiti3-python-39 /tmp/pil
cd ..
rm -fr /tmp/pil
