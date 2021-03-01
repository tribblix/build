#!/bin/sh
#
${THOME}/build/unpack python-magic-0.4.22
cd python-magic-0.4.22
/usr/versions/python-3.8/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.8/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBmagic-python-38 /tmp/pil
cd ..
rm -fr /tmp/pil
