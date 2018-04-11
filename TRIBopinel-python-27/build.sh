#!/bin/sh
#
${THOME}/build/unpack opinel-3.3.4
cd opinel-3.3.4
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBopinel-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
