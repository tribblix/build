#!/bin/sh
#
${THOME}/build/unpack boto-2.42.0
cd boto-2.42.0
/usr/versions/python-3.5/bin/python setup.py build
rm -fr /tmp/sut
/usr/versions/python-3.5/bin/python setup.py install --root=/tmp/sut
${THOME}/build/create_pkg TRIBboto-python-35 /tmp/sut
cd ..
rm -fr /tmp/sut
