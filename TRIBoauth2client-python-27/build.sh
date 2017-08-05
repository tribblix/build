#!/bin/sh
#
${THOME}/build/unpack oauth2client-4.1.2
cd oauth2client-4.1.2
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBoauth2client-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
