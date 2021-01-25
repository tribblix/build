#!/bin/sh
#
${THOME}/build/unpack wapiti3-3.0.3
cd wapiti3-3.0.3
/usr/versions/python-3.8/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.8/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBwapiti3-python-38 /tmp/pil
cd ..
rm -fr /tmp/pil
