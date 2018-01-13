#!/bin/sh
#
${THOME}/build/unpack RestrictedPython-4.0b2
cd RestrictedPython-4.0b2
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBrestricted-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
