#!/bin/sh
#
# this is the nose test framework, needed to build pitivi
#
${THOME}/build/unpack nose-1.3.7
cd nose-1.3.7
rm -fr /tmp/p3a
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/p3a
${THOME}/build/create_pkg TRIBnose-python-37 /tmp/p3a
cd ..
rm -fr /tmp/p3a
