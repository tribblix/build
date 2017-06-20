#!/bin/sh
#
${THOME}/build/unpack jmespath-0.9.3
cd jmespath-0.9.3
python setup.py build
rm -fr /tmp/pdu
python setup.py install --root=/tmp/pdu
${THOME}/build/create_pkg TRIBjmespath-python-27 /tmp/pdu
cd ..
rm -fr /tmp/pdu
