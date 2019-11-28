#!/bin/sh
#
${THOME}/build/unpack pyasn1-0.4.8
cd pyasn1-0.4.8
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpyasn1-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
