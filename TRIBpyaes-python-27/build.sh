#!/bin/sh
#
${THOME}/build/unpack pyaes-1.6.1
cd pyaes-1.6.1
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpyaes-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
