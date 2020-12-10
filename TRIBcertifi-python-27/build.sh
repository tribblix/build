#!/bin/sh
#
${THOME}/build/unpack certifi-2020.12.5
cd certifi-2020.12.5
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBcertifi-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
