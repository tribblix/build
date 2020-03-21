#!/bin/sh
#
${THOME}/build/unpack enum34-1.1.10
cd enum34-1.1.10
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBenum-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
