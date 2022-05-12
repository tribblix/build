#!/bin/sh
#
${THOME}/build/unpack s3transfer-0.5.2
cd s3transfer-0.5.2
/usr/versions/python-3.9/bin/python3 setup.py build
rm -fr /tmp/pdu
/usr/versions/python-3.9/bin/python3 setup.py install --root=/tmp/pdu
${THOME}/build/create_pkg TRIBs3transfer-python-39 /tmp/pdu
cd ..
rm -fr /tmp/pdu
