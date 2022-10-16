#!/bin/sh
#
${THOME}/build/unpack jmespath-1.0.1
cd jmespath-1.0.1
/usr/versions/python-3.10/bin/python3 setup.py build
rm -fr /tmp/pdu
/usr/versions/python-3.10/bin/python3 setup.py install --root=/tmp/pdu
${THOME}/build/create_pkg TRIBjmespath-python-310 /tmp/pdu
cd ..
rm -fr /tmp/pdu
