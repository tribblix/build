#!/bin/sh
#
${THOME}/build/unpack Cython-0.29.13
cd Cython-0.29.13
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBcython-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
