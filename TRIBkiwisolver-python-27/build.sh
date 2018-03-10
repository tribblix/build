#!/bin/sh
#
${THOME}/build/unpack kiwisolver-1.0.1
cd kiwisolver-1.0.1
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBkiwisolver-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
