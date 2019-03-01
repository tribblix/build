#!/bin/sh
#
${THOME}/build/unpack attrs-18.2.0
cd attrs-18.2.0
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBattrs-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
