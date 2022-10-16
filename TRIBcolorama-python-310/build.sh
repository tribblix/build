#!/bin/sh
#
${THOME}/build/unpack colorama-0.4.5
cd colorama-0.4.5
/usr/versions/python-3.10/bin/python3 setup.py build
rm -fr /tmp/pdu
/usr/versions/python-3.10/bin/python3 setup.py install --root=/tmp/pdu
${THOME}/build/create_pkg TRIBcolorama-python-310 /tmp/pdu
cd ..
rm -fr /tmp/pdu
