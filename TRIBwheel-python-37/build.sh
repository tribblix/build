#!/bin/sh
#
${THOME}/build/unpack wheel-0.32.3
cd wheel-0.32.3
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBwheel-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
