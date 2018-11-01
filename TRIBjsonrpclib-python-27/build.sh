#!/bin/sh
#
${THOME}/build/unpack jsonrpclib-0.1.7
cd jsonrpclib-0.1.7
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBjsonrpclib-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
