#!/bin/sh
#
${THOME}/build/unpack Pygments-2.11.2
cd Pygments-2.11.2
/usr/versions/python-3.9/bin/python3 setup.py build
rm -fr /tmp/pdu
/usr/versions/python-3.9/bin/python3 setup.py install --root=/tmp/pdu
${THOME}/build/create_pkg TRIBpygments-39 /tmp/pdu
cd ..
rm -fr /tmp/pdu
