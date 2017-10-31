#!/bin/sh
#
${THOME}/build/unpack botocore-1.7.36
cd botocore-1.7.36
python setup.py build
rm -fr /tmp/pdu
python setup.py install --root=/tmp/pdu
${THOME}/build/create_pkg TRIBbotocore-python-27 /tmp/pdu
cd ..
rm -fr /tmp/pdu
