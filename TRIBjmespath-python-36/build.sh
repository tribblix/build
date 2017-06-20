#!/bin/sh
#
${THOME}/build/unpack jmespath-0.9.3
cd jmespath-0.9.3
/usr/versions/python-3.6/bin/python3 setup.py build
rm -fr /tmp/pdu
/usr/versions/python-3.6/bin/python3 setup.py install --root=/tmp/pdu
${THOME}/build/create_pkg TRIBjmespath-python-36 /tmp/pdu
cd ..
rm -fr /tmp/pdu
