#!/bin/sh
#
# radicale - no dependencies
#
${THOME}/build/unpack Radicale-1.1.6
cd Radicale-1.1.6
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBradicale-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
