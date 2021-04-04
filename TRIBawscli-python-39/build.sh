#!/bin/sh
#
# needs botocore colorama s3transfer docutils rsa yaml
#
${THOME}/build/unpack awscli-1.19.44
cd awscli-1.19.44
/usr/versions/python-3.9/bin/python3 setup.py build
rm -fr /tmp/sut
/usr/versions/python-3.9/bin/python3 setup.py install --root=/tmp/sut
${THOME}/build/create_pkg TRIBawscli-python-39 /tmp/sut
cd ..
rm -fr /tmp/sut
