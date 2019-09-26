#!/bin/sh
#
${THOME}/build/unpack phonenumbers-8.10.19
cd phonenumbers-8.10.19
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBphonenumbers-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
