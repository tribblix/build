#!/bin/sh
#
${THOME}/build/unpack IMAPClient-2.2.0
cd IMAPClient-2.2.0
/usr/versions/python-3.9/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.9/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBimapclient-python-39 /tmp/pil
cd ..
rm -fr /tmp/pil
