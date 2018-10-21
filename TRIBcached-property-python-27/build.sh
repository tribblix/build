#!/bin/sh
#
${THOME}/build/unpack cached-property-1.5.1
cd cached-property-1.5.1
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBcached-property-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
