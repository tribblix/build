#!/bin/sh
#
${THOME}/build/unpack psutil-5.4.7
cd psutil-5.4.7
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpsutil-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
