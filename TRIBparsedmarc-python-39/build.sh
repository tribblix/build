#!/bin/sh
#
${THOME}/build/unpack parsedmarc-7.1.1
cd parsedmarc-7.1.1
#
# check that the dependencies aren't overconstrained
#
/usr/versions/python-3.9/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.9/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBparsedmarc-python-39 /tmp/pil
cd ..
rm -fr /tmp/pil
