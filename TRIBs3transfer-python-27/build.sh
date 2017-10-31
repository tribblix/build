#!/bin/sh
#
${THOME}/build/unpack s3transfer-0.1.11
cd s3transfer-0.1.11
python setup.py build
rm -fr /tmp/pdu
python setup.py install --root=/tmp/pdu
${THOME}/build/create_pkg TRIBs3transfer-python-27 /tmp/pdu
cd ..
rm -fr /tmp/pdu
