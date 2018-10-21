#!/bin/sh
#
${THOME}/build/unpack docker-3.5.1
cd docker-3.5.1
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBdocker-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
