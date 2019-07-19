#!/bin/sh
#
${THOME}/build/unpack google-auth-httplib2-0.0.3
cd google-auth-httplib2-0.0.3
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBgauth-h2-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
