#!/bin/sh
#
${THOME}/build/unpack s3transfer-0.1.10
cd s3transfer-0.1.10
/usr/versions/python-3.6/bin/python3 setup.py build
rm -fr /tmp/pdu
/usr/versions/python-3.6/bin/python3 setup.py install --root=/tmp/pdu
${THOME}/build/create_pkg TRIBs3transfer-python-36 /tmp/pdu
cd ..
rm -fr /tmp/pdu
