#!/bin/sh
#
${THOME}/build/unpack docutils-0.15.2
cd docutils-0.15.2
python setup.py build
rm -fr /tmp/pdu
python setup.py install --root=/tmp/pdu
${THOME}/build/create_pkg TRIBdocutils-python-27 /tmp/pdu
cd ..
rm -fr /tmp/pdu
