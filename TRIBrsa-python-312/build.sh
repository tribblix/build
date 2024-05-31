#!/bin/sh
#
${THOME}/build/unpack rsa-4.7.2
cd rsa-4.7.2
/usr/versions/python-3.12/bin/python3 setup.py build
rm -fr /tmp/pdu
/usr/versions/python-3.12/bin/python3 setup.py install --root=/tmp/pdu
${THOME}/build/create_pkg TRIBrsa-python-312 /tmp/pdu
cd ..
rm -fr /tmp/pdu
