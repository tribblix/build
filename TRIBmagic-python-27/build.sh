#!/bin/sh
#
${THOME}/build/unpack python-magic-0.4.15
cd python-magic-0.4.15
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBmagic-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
