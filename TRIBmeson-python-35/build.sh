#!/bin/sh
#
#
#
${THOME}/build/unpack meson-0.33.0
cd meson-0.33.0
rm -fr /tmp/p3a
/usr/versions/python-3.5/bin/python3 setup.py install --root=/tmp/p3a
${THOME}/build/create_pkg TRIBmeson-python-35 /tmp/p3a
rm -fr /tmp/p3a
