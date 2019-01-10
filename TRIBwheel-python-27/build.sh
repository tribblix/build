#!/bin/sh
#
${THOME}/build/unpack wheel-0.32.3
cd wheel-0.32.3
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBwheel-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
