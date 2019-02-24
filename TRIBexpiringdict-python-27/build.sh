#!/bin/sh
#
${THOME}/build/unpack expiringdict-1.1.4
cd expiringdict-1.1.4
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBexpiringdict-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
