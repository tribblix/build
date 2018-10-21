#!/bin/sh
#
${THOME}/build/unpack ConfigArgParse-0.13.0
cd ConfigArgParse-0.13.0
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBconfigargparse-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
