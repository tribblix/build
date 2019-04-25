#!/bin/sh
#
${THOME}/build/unpack kazoo-2.6.1
cd kazoo-2.6.1
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBkazoo-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
