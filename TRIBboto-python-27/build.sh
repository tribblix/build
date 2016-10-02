#!/bin/sh
#
${THOME}/build/unpack boto-2.42.0
cd boto-2.42.0
python setup.py build
rm -fr /tmp/sut
python setup.py install --root=/tmp/sut
${THOME}/build/create_pkg TRIBboto-python-27 /tmp/sut
cd ..
rm -fr /tmp/sut
