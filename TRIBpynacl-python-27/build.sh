#!/bin/sh
#
${THOME}/build/unpack PyNaCl-1.3.0
cd PyNaCl-1.3.0
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpynacl-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
