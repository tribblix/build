#!/bin/sh
#
${THOME}/build/unpack jdcal-1.4.1
cd jdcal-1.4.1
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBjdcal-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
