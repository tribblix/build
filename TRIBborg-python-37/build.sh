#!/bin/sh
#
${THOME}/build/unpack borgbackup-1.1.13
cd borgbackup-1.1.13
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBborg-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
