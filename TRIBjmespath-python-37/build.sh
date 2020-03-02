#!/bin/sh
#
${THOME}/build/unpack jmespath-0.9.5
cd jmespath-0.9.5
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pdu
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pdu
${THOME}/build/create_pkg TRIBjmespath-python-37 /tmp/pdu
cd ..
rm -fr /tmp/pdu
