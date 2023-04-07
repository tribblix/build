#!/bin/sh
#
# note that the jsonrpclib on PyPi is old and incompatible
# with python3
#
${THOME}/build/unpack jsonrpclib-0.4.2
cd jsonrpclib-0.4.2
/usr/versions/python-3.11/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.11/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBjsonrpclib-python-311 /tmp/pil
cd ..
rm -fr /tmp/pil
