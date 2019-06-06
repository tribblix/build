#!/bin/sh
#
#
#
${THOME}/build/unpack Django-1.11.21
cd Django-1.11.21
rm -fr /tmp/p3a
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/p3a
${THOME}/build/create_pkg TRIBdjango-python-37 /tmp/p3a
cd ..
rm -fr /tmp/p3a
