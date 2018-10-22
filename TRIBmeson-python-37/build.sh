#!/bin/sh
#
#
#
${THOME}/build/unpack meson-0.47.1
cd meson-0.47.1
rm -fr /tmp/p3a
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/p3a
${THOME}/build/create_pkg TRIBmeson-python-37 /tmp/p3a
cd ..
rm -fr /tmp/p3a
