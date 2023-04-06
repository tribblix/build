#!/bin/sh
#
# pages come up blank on python 3.10, so experimental
#
${THOME}/build/unpack mcross-0.5.19
cd mcross-0.5.19
/usr/versions/python-3.11/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.11/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBmcross-python-311 /tmp/pil
cd ..
rm -fr /tmp/pil
