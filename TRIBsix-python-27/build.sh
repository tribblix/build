#!/bin/sh
#
${THOME}/build/unpack six-1.10.0
cd six-1.10.0
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBsix-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
