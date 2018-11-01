#!/bin/sh
#
${THOME}/build/unpack ply-3.11
cd ply-3.11
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBply-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
