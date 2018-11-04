#!/bin/sh
#
#
#
${THOME}/build/unpack Django-2.1.3
cd Django-2.1.3
rm -fr /tmp/p3a
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/p3a
${THOME}/build/create_pkg TRIBdjango2-python-37 /tmp/p3a
cd ..
rm -fr /tmp/p3a
