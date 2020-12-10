#!/bin/sh
#
${THOME}/build/unpack Pygments-2.7.3
cd Pygments-2.7.3
/usr/versions/python-3.8/bin/python3 setup.py build
rm -fr /tmp/pdu
/usr/versions/python-3.8/bin/python3 setup.py install --root=/tmp/pdu
${THOME}/build/create_pkg TRIBpygments-38 /tmp/pdu
cd ..
rm -fr /tmp/pdu
