#!/bin/sh
#
${THOME}/build/unpack s3transfer-0.3.4
cd s3transfer-0.3.4
/usr/versions/python-3.8/bin/python3 setup.py build
rm -fr /tmp/pdu
/usr/versions/python-3.8/bin/python3 setup.py install --root=/tmp/pdu
${THOME}/build/create_pkg TRIBs3transfer-python-38 /tmp/pdu
cd ..
rm -fr /tmp/pdu
