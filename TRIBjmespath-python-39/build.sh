#!/bin/sh
#
${THOME}/build/unpack jmespath-0.10.0
cd jmespath-0.10.0
/usr/versions/python-3.9/bin/python3 setup.py build
rm -fr /tmp/pdu
/usr/versions/python-3.9/bin/python3 setup.py install --root=/tmp/pdu
${THOME}/build/create_pkg TRIBjmespath-python-39 /tmp/pdu
cd ..
rm -fr /tmp/pdu
