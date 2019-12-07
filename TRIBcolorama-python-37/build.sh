#!/bin/sh
#
${THOME}/build/unpack colorama-0.4.3
cd colorama-0.4.3
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pdu
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pdu
${THOME}/build/create_pkg TRIBcolorama-python-37 /tmp/pdu
cd ..
rm -fr /tmp/pdu
