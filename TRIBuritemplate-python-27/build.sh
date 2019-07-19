#!/bin/sh
#
${THOME}/build/unpack uritemplate-3.0.0
cd uritemplate-3.0.0
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBuritemplate-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
