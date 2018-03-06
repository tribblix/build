#!/bin/sh
#
${THOME}/build/unpack z3-0.2.0
cd z3-0.2.0
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBz3-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
