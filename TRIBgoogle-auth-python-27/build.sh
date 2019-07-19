#!/bin/sh
#
${THOME}/build/unpack google-auth-1.6.3
cd google-auth-1.6.3
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBgoogle-auth-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
