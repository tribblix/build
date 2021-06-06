#!/bin/sh
#
#
#
${THOME}/build/unpack meson-0.58.0
cd meson-0.58.0
rm -fr /tmp/p3a
/usr/versions/python-3.9/bin/python3 setup.py install --root=/tmp/p3a
${THOME}/build/create_pkg TRIBmeson-python-39 /tmp/p3a
cd ..
rm -fr /tmp/p3a
