#!/bin/sh
#
${THOME}/build/unpack simplejson-3.17.2
cd simplejson-3.17.2
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBsimplejson-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
