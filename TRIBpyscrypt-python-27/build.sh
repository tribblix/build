#!/bin/sh
#
${THOME}/build/unpack pyscrypt-1.6.2
cd pyscrypt-1.6.2
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpyscrypt-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
