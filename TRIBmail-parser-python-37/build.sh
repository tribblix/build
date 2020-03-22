#!/bin/sh
#
${THOME}/build/unpack mail-parser-3.12.0
cd mail-parser-3.12.0
#
# requirements are plain wrong for python3
#
sed -i '/ipaddress/d' mail_parser.egg-info/requires.txt
sed -i '/ipaddress/d' requirements.txt
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBmail-parser-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
