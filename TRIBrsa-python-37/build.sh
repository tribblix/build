#!/bin/sh
#
${THOME}/build/unpack rsa-3.4.2
cd rsa-3.4.2
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pdu
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pdu
${THOME}/build/create_pkg TRIBrsa-python-37 /tmp/pdu
cd ..
rm -fr /tmp/pdu
