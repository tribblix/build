#!/bin/sh
#
${THOME}/build/unpack simplejson-3.16.0
cd simplejson-3.16.0
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBsimplejson-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
