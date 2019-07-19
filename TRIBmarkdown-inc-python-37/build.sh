#!/bin/sh
#
${THOME}/build/unpack markdown-include-0.5.1
cd markdown-include-0.5.1
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBmarkdown-inc-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
