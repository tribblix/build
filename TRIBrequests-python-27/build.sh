#!/bin/sh
#
${THOME}/build/unpack requests-2.17.3
cd requests-2.17.3
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBrequests-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
