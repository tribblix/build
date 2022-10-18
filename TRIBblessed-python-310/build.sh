#!/bin/sh
#
${THOME}/build/unpack blessed-1.19.1
cd blessed-1.19.1
/usr/versions/python-3.10/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.10/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBblessed-python-310 /tmp/pil
cd ..
rm -fr /tmp/pil
