#!/bin/sh
#
${THOME}/build/unpack dateparser-0.7.6
cd dateparser-0.7.6
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBdateparser-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
