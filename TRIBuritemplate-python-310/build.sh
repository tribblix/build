#!/bin/sh
#
${THOME}/build/unpack uritemplate-4.1.1
cd uritemplate-4.1.1
/usr/versions/python-3.10/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.10/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBuritemplate-python-310 /tmp/pil
cd ..
rm -fr /tmp/pil
