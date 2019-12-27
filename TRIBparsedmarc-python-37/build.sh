#!/bin/sh
#
${THOME}/build/unpack parsedmarc-6.7.4
cd parsedmarc-6.7.4
#
# check that the dependencies aren't overconstrained
#
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBparsedmarc-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
