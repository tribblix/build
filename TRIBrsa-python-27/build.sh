#!/bin/sh
#
${THOME}/build/unpack rsa-3.4.2
cd rsa-3.4.2
python setup.py build
rm -fr /tmp/pdu
python setup.py install --root=/tmp/pdu
${THOME}/build/create_pkg TRIBrsa-python-27 /tmp/pdu
cd ..
rm -fr /tmp/pdu
