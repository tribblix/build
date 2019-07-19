#!/bin/sh
#
${THOME}/build/unpack pyasn1-modules-0.2.5
cd pyasn1-modules-0.2.5
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpyasn1-modules-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
