#!/bin/sh
#
${THOME}/build/unpack fasteners-0.16
cd fasteners-0.16
/usr/versions/python-3.9/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.9/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBfasteners-python-39 /tmp/pil
cd ..
rm -fr /tmp/pil
