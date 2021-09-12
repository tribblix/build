#!/bin/sh
#
${THOME}/build/unpack s3transfer-0.5.0
cd s3transfer-0.5.0
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pdu
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pdu
${THOME}/build/create_pkg TRIBs3transfer-python-37 /tmp/pdu
cd ..
rm -fr /tmp/pdu
