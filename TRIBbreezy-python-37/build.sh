#!/bin/sh
#
${THOME}/build/unpack breezy-3.2.1
cd breezy-3.2.1
# needs gnu msgfmt
env PATH=/usr/gnu/bin:$PATH /usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
env PATH=/usr/gnu/bin:$PATH /usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBbreezy-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
