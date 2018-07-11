#!/bin/sh
#
${THOME}/build/unpack docker-pycreds-0.3.0
cd docker-pycreds-0.3.0
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBdocker-pycreds-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
