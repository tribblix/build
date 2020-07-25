#!/bin/sh
#
${THOME}/build/unpack idna-2.10
cd idna-2.10
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBidna-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
