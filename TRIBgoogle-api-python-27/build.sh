#!/bin/sh
#
${THOME}/build/unpack google-api-python-client-1.7.11
cd google-api-python-client-1.7.11
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBgoogle-api-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
