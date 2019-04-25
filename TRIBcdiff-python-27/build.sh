#!/bin/sh
#
${THOME}/build/unpack cdiff-1.0
cd cdiff-1.0
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBcdiff-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
