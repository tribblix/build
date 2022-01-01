#!/bin/sh
#
${THOME}/build/unpack botocore-1.23.26
cd botocore-1.23.26
/usr/versions/python-3.9/bin/python3 setup.py build
rm -fr /tmp/pdu
/usr/versions/python-3.9/bin/python3 setup.py install --root=/tmp/pdu
${THOME}/build/create_pkg TRIBbotocore-python-39 /tmp/pdu
cd ..
rm -fr /tmp/pdu
