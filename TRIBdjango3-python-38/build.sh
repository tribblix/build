#!/bin/sh
#
${THOME}/build/unpack Django-3.1.5
cd Django-3.1.5
rm -fr /tmp/p3a
/usr/versions/python-3.8/bin/python3 setup.py install --root=/tmp/p3a
${THOME}/build/create_pkg TRIBdjango3-python-38 /tmp/p3a
cd ..
rm -fr /tmp/p3a
