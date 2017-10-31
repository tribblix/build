#!/bin/sh
#
${THOME}/build/unpack boto3-1.4.7
cd boto3-1.4.7
/usr/versions/python-3.6/bin/python3 setup.py build
rm -fr /tmp/sut
/usr/versions/python-3.6/bin/python3 setup.py install --root=/tmp/sut
${THOME}/build/create_pkg TRIBboto3-python-36 /tmp/sut
cd ..
rm -fr /tmp/sut
