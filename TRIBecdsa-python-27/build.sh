#!/bin/sh
#
${THOME}/build/unpack ecdsa-0.13.2
cd ecdsa-0.13.2
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBecdsa-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
