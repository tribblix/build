#!/bin/sh
#
${THOME}/build/unpack imagesize-1.1.0
cd imagesize-1.1.0
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBimagesize-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
