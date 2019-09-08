#!/bin/sh
#
${THOME}/build/unpack Cython-0.29.13
cd Cython-0.29.13
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBcython-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
