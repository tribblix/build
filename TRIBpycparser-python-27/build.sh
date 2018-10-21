#!/bin/sh
#
${THOME}/build/unpack pycparser-2.19
cd pycparser-2.19
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpycparser-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
