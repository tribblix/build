#!/bin/sh
#
# this is a backport of the python3 concurrent.futures module
# it isn't needed for python3, obviously
#
${THOME}/build/unpack futures-3.2.0
cd futures-3.2.0
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBfutures-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
