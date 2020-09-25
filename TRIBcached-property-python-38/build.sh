#!/bin/sh
#
${THOME}/build/unpack cached-property-1.5.2
cd cached-property-1.5.2
/usr/versions/python-3.8/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.8/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBcached-property-python-38 /tmp/pil
cd ..
rm -fr /tmp/pil
