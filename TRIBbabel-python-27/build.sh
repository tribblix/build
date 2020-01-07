#!/bin/sh
#
# needs pytz
#
${THOME}/build/unpack Babel-2.8.0
cd Babel-2.8.0
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBbabel-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
