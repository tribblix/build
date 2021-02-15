#!/bin/sh
#
${THOME}/build/unpack cffi-1.14.5
cd cffi-1.14.5
/usr/versions/python-3.9/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.9/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBcffi-python-39 /tmp/pil
cd ..
rm -fr /tmp/pil
