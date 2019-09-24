#!/bin/sh
#
${THOME}/build/unpack patroni-1.6.0
cd patroni-1.6.0
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpatroni-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
