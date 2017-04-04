#!/bin/sh
#
# this is the nose test framework, needed to build pitivi
#
${THOME}/build/unpack nose-1.3.7
cd nose-1.3.7
rm -fr /tmp/p3a
python setup.py install --root=/tmp/p3a
${THOME}/build/create_pkg TRIBnose-python-27 /tmp/p3a
cd ..
rm -fr /tmp/p3a
