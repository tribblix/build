#!/bin/sh
#
${THOME}/build/unpack botocore-1.12.184
cd botocore-1.12.184
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pdu
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pdu
${THOME}/build/create_pkg TRIBbotocore-python-37 /tmp/pdu
cd ..
rm -fr /tmp/pdu
