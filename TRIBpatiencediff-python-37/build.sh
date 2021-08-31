#!/bin/sh
#
${THOME}/build/unpack patiencediff-0.2.2
cd patiencediff-0.2.2
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpatiencediff-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
