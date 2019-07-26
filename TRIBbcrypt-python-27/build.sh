#!/bin/sh
#
${THOME}/build/unpack bcrypt-3.1.7
cd bcrypt-3.1.7
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBbcrypt-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
