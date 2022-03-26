#!/bin/sh
#
${THOME}/build/unpack multidict-6.0.2
cd multidict-6.0.2
/usr/versions/python-3.9/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.9/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBmultidict-python-39 /tmp/pil
cd ..
rm -fr /tmp/pil
