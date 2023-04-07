#!/bin/sh
#
${THOME}/build/unpack breezy-3.3.2
cd breezy-3.3.2
# needs gnu msgfmt
env PATH=/usr/gnu/bin:$PATH LD_RUN_PATH=/usr/versions/python-3.11/lib /usr/versions/python-3.11/bin/python3 setup.py build
rm -fr /tmp/pil
env PATH=/usr/gnu/bin:$PATH LD_RUN_PATH=/usr/versions/python-3.11/lib /usr/versions/python-3.11/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBbreezy-python-311 /tmp/pil
cd ..
rm -fr /tmp/pil
