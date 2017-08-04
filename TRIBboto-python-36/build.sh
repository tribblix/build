#!/bin/sh
#
${THOME}/build/unpack boto-2.48.0
cd boto-2.48.0
/usr/versions/python-3.6/bin/python3 setup.py build
rm -fr /tmp/sut
/usr/versions/python-3.6/bin/python3 setup.py install --root=/tmp/sut
${THOME}/build/create_pkg TRIBboto-python-36 /tmp/sut
cd ..
rm -fr /tmp/sut
