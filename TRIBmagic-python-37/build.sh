#!/bin/sh
#
${THOME}/build/unpack python-magic-0.4.18
cd python-magic-0.4.18
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBmagic-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
