#!/bin/sh
#
${THOME}/build/unpack gixy-0.1.4
cd gixy-0.1.4
python setup.py build
rm -fr /tmp/sut
python setup.py install --root=/tmp/sut
${THOME}/build/create_pkg TRIBgixy-python-27 /tmp/sut
cd ..
rm -fr /tmp/sut
