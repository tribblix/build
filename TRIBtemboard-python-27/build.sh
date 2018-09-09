#!/bin/sh
#
${THOME}/build/unpack temboard-2.0
cd temboard-2.0
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBtemboard-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
