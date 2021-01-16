#!/bin/sh
#
# needs pytz
#
${THOME}/build/unpack Babel-2.9.0
cd Babel-2.9.0
/usr/versions/python-3.8/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.8/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBbabel-python-38 /tmp/pil
cd ..
rm -fr /tmp/pil
