#!/bin/sh
#
${THOME}/build/unpack oauth2client-4.1.3
cd oauth2client-4.1.3
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBoauth2client-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
