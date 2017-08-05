#!/bin/sh
#
${THOME}/build/unpack pyasn1-modules-0.0.11
cd pyasn1-modules-0.0.11
/usr/versions/python-3.6/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.6/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpyasn1-modules-python-36 /tmp/pil
cd ..
rm -fr /tmp/pil
