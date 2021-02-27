#!/bin/sh
#
${THOME}/build/unpack mailsuite-1.6.1
cd mailsuite-1.6.1
/usr/versions/python-3.9/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.9/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBmailsuite-python-39 /tmp/pil
cd ..
rm -fr /tmp/pil
