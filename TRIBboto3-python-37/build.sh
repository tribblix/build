#!/bin/sh
#
${THOME}/build/unpack boto3-1.9.184
cd boto3-1.9.184
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/sut
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/sut
${THOME}/build/create_pkg TRIBboto3-python-37 /tmp/sut
cd ..
rm -fr /tmp/sut
