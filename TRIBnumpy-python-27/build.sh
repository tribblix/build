#!/bin/sh
#
${THOME}/build/unpack numpy-1.10.4
cd numpy-1.10.4
python setup.py build -j 4
rm -fr /tmp/hg1
python setup.py install --root=/tmp/hg1
${THOME}/build/create_pkg TRIBnumpy-python-27 /tmp/hg1
cd ..
rm -fr /tmp/hg1
