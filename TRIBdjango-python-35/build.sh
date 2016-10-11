#!/bin/sh
#
#
#
${THOME}/build/unpack Django-1.10.2
cd Django-1.10.2
rm -fr /tmp/p3a
/usr/versions/python-3.5/bin/python3 setup.py install --root=/tmp/p3a
${THOME}/build/create_pkg TRIBdjango-python-35 /tmp/p3a
rm -fr /tmp/p3a
