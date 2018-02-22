#!/bin/sh
#
${THOME}/build/unpack netaddr-0.7.19
cd netaddr-0.7.19
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBnetaddr-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
