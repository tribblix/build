#!/bin/sh
#
${THOME}/build/unpack enum34-1.1.6
cd enum34-1.1.6
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBenum-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
