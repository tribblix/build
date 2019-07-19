#!/bin/sh
#
${THOME}/build/unpack jsonrpclib-0.1.7
cd jsonrpclib-0.1.7
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBjsonrpclib-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
