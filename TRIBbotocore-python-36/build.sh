#!/bin/sh
#
${THOME}/build/unpack botocore-1.5.71
cd botocore-1.5.71
/usr/versions/python-3.6/bin/python3 setup.py build
rm -fr /tmp/pdu
/usr/versions/python-3.6/bin/python3 setup.py install --root=/tmp/pdu
${THOME}/build/create_pkg TRIBbotocore-python-36 /tmp/pdu
cd ..
rm -fr /tmp/pdu
