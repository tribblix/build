#!/bin/sh
#
${THOME}/build/unpack pycurl-7.43.0.5
cd pycurl-7.43.0.5
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpycurl-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
