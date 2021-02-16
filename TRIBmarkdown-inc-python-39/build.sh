#!/bin/sh
#
${THOME}/build/unpack markdown-include-0.6.0
cd markdown-include-0.6.0
/usr/versions/python-3.9/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.9/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBmarkdown-inc-python-39 /tmp/pil
cd ..
rm -fr /tmp/pil
