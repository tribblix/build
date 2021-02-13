#!/bin/sh
#
${THOME}/build/unpack docutils-0.15.2
cd docutils-0.15.2
/usr/versions/python-3.9/bin/python3 setup.py build
rm -fr /tmp/pdu
/usr/versions/python-3.9/bin/python3 setup.py install --root=/tmp/pdu
${THOME}/build/create_pkg TRIBdocutils-python-39 /tmp/pdu
cd ..
rm -fr /tmp/pdu
