#!/bin/sh
#
${THOME}/build/unpack docker-4.0.2
cd docker-4.0.2
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBdocker-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
