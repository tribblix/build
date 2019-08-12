#!/bin/sh
#
${THOME}/build/unpack temboard-4.1
cd temboard-4.1
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBtemboard-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
