#!/bin/sh
#
${THOME}/build/unpack jmespath-1.0.1
cd jmespath-1.0.1
/usr/versions/python-3.11/bin/python3 setup.py build
rm -fr /tmp/pdu
/usr/versions/python-3.11/bin/python3 setup.py install --root=/tmp/pdu
${THOME}/build/create_pkg TRIBjmespath-python-311 /tmp/pdu
cd ..
rm -fr /tmp/pdu
