#!/bin/sh
#
${THOME}/build/unpack python-magic-0.4.24
cd python-magic-0.4.24
/usr/versions/python-3.9/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.9/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBmagic-python-39 /tmp/pil
cd ..
rm -fr /tmp/pil
