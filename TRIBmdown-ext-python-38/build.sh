#!/bin/sh
#
${THOME}/build/unpack pymdown-extensions-8.1.1
cd pymdown-extensions-8.1.1
/usr/versions/python-3.8/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.8/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBmdown-ext-python-38 /tmp/pil
cd ..
rm -fr /tmp/pil
