#!/bin/sh
#
${THOME}/build/unpack setuptools-36.0.1
cd setuptools-36.0.1
python setup.py build
rm -fr /tmp/sut
python setup.py install --root=/tmp/sut
${THOME}/build/create_pkg TRIBsetuptools-python-27 /tmp/sut
cd ..
rm -fr /tmp/sut
