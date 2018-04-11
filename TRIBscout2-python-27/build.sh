#!/bin/sh
#
${THOME}/build/unpack AWSScout2-3.2.0
cd AWSScout2-3.2.0
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBscout2-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
