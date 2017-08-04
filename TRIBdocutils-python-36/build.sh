#!/bin/sh
#
${THOME}/build/unpack docutils-0.14
cd docutils-0.14
/usr/versions/python-3.6/bin/python3 setup.py build
rm -fr /tmp/pdu
/usr/versions/python-3.6/bin/python3 setup.py install --root=/tmp/pdu
${THOME}/build/create_pkg TRIBdocutils-python-36 /tmp/pdu
cd ..
rm -fr /tmp/pdu
