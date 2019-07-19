#!/bin/sh
#
${THOME}/build/unpack cachetools-3.1.1
cd cachetools-3.1.1
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBcachetools-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
