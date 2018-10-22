#!/bin/sh
#
${THOME}/build/unpack Pygments-2.2.0
cd Pygments-2.2.0
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pdu
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pdu
${THOME}/build/create_pkg TRIBpygments-37 /tmp/pdu
cd ..
rm -fr /tmp/pdu
