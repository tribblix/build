#!/bin/sh
#
${THOME}/build/unpack requests-2.22.0
cd requests-2.22.0
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBrequests-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
