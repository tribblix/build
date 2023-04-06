#!/bin/sh
#
${THOME}/build/unpack pkgconfig-1.5.5
cd pkgconfig-1.5.5
/usr/versions/python-3.11/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.11/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpkgconfig-python-311 /tmp/pil
cd ..
rm -fr /tmp/pil
