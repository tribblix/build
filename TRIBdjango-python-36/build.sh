#!/bin/sh
#
#
#
${THOME}/build/unpack Django-1.11.11
cd Django-1.11.11
rm -fr /tmp/p3a
/usr/versions/python-3.6/bin/python3 setup.py install --root=/tmp/p3a
${THOME}/build/create_pkg TRIBdjango-python-36 /tmp/p3a
cd ..
rm -fr /tmp/p3a
