#!/bin/sh
#
${THOME}/build/unpack gixy-0.1.4
cd gixy-0.1.4
/usr/versions/python-3.6/bin/python3 setup.py build
rm -fr /tmp/sut
/usr/versions/python-3.6/bin/python3 setup.py install --root=/tmp/sut
${THOME}/build/create_pkg TRIBgixy-python-36 /tmp/sut
cd ..
rm -fr /tmp/sut
