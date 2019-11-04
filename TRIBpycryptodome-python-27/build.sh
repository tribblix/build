#!/bin/sh
#
${THOME}/build/unpack pycryptodome-3.9.1
cd pycryptodome-3.9.1
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpycryptodome-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
