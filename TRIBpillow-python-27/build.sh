#!/bin/sh
#
${THOME}/build/unpack Pillow-6.2.0
cd Pillow-6.2.0
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpillow-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
