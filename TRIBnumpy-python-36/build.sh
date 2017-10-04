#!/bin/sh
#
${THOME}/build/unpack numpy-1.13.3
cd numpy-1.13.3
/usr/versions/python-3.6/bin/python3 setup.py build -j 4
rm -fr /tmp/hg1
/usr/versions/python-3.6/bin/python3 setup.py install --root=/tmp/hg1
${THOME}/build/create_pkg TRIBnumpy-python-36 /tmp/hg1
cd ..
rm -fr /tmp/hg1
