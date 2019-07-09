#!/bin/sh
#
# needs botocore colorama s3transfer docutils rsa yaml
#
${THOME}/build/unpack awscli-1.16.194
cd awscli-1.16.194
python setup.py build
rm -fr /tmp/sut
python setup.py install --root=/tmp/sut
${THOME}/build/create_pkg TRIBawscli-python-27 /tmp/sut
cd ..
rm -fr /tmp/sut
