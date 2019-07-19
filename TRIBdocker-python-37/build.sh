#!/bin/sh
#
${THOME}/build/unpack docker-3.5.1
cd docker-3.5.1
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBdocker-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
