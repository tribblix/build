#!/bin/sh
#
${THOME}/build/unpack cached-property-1.3.0
cd cached-property-1.3.0
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBcached-property-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
