#!/bin/sh
#
${THOME}/build/unpack setuptools-41.4.0
cd setuptools-41.4.0
python setup.py build
rm -fr /tmp/sut
python setup.py install --root=/tmp/sut
${THOME}/build/create_pkg TRIBsetuptools-python-27 /tmp/sut
cd ..
rm -fr /tmp/sut
