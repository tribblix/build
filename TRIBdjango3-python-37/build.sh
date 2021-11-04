#!/bin/sh
#
# 3.2 is an LTS release
#
${THOME}/build/unpack Django-3.2.9
cd Django-3.2.9
rm -fr /tmp/p3a
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/p3a
${THOME}/build/create_pkg TRIBdjango3-python-37 /tmp/p3a
cd ..
rm -fr /tmp/p3a
