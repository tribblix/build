#!/bin/sh
#
${THOME}/build/unpack ipaddress-1.0.18
cd ipaddress-1.0.18
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBipaddress-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
