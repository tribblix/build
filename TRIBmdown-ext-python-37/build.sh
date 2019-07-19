#!/bin/sh
#
${THOME}/build/unpack pymdown-extensions-4.11
cd pymdown-extensions-4.11
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBmdown-ext-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
