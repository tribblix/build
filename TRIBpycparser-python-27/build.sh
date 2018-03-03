#!/bin/sh
#
${THOME}/build/unpack pycparser-2.18
cd pycparser-2.18
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpycparser-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
