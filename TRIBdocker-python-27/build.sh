#!/bin/sh
#
${THOME}/build/unpack docker-4.1.0
cd docker-4.1.0
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBdocker-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
