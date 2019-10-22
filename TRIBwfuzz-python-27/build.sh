#!/bin/sh
#
${THOME}/build/unpack wfuzz-2.4.1
cd wfuzz-2.4.1
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBwfuzz-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
