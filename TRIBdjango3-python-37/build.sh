#!/bin/sh
#
#
#
${THOME}/build/unpack Django-3.0.3
cd Django-3.0.3
rm -fr /tmp/p3a
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/p3a
${THOME}/build/create_pkg TRIBdjango3-python-37 /tmp/p3a
cd ..
rm -fr /tmp/p3a
