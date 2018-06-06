#!/bin/sh
#
${THOME}/build/unpack monotonic-1.5
cd monotonic-1.5
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBmonotonic-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
