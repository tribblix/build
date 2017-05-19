#!/bin/sh
#
${THOME}/build/unpack colorama-0.3.9
cd colorama-0.3.9
/usr/versions/python-3.6/bin/python3 setup.py build
rm -fr /tmp/pdu
/usr/versions/python-3.6/bin/python3 setup.py install --root=/tmp/pdu
${THOME}/build/create_pkg TRIBcolorama-python-36 /tmp/pdu
cd ..
rm -fr /tmp/pdu
