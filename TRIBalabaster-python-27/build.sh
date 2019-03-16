#!/bin/sh
#
${THOME}/build/unpack alabaster-0.7.12
cd alabaster-0.7.12
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBalabaster-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
