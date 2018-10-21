#!/bin/sh
#
${THOME}/build/unpack cached-property-1.5.1
cd cached-property-1.5.1
/usr/versions/python-3.6/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.6/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBcached-property-python-36 /tmp/pil
cd ..
rm -fr /tmp/pil
