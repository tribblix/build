#!/bin/sh
#
${THOME}/build/unpack pycrypto-2.6.1
cd pycrypto-2.6.1
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpycrypto-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
