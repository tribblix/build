#!/bin/sh
#
${THOME}/build/unpack docker-4.4.1
cd docker-4.4.1
/usr/versions/python-3.8/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.8/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBdocker-python-38 /tmp/pil
cd ..
rm -fr /tmp/pil
