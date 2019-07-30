#!/bin/sh
#
${THOME}/build/unpack packaging-19.1
cd packaging-19.1
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpackaging-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
