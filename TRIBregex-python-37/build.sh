#!/bin/sh
#
${THOME}/build/unpack regex-2022.1.18
cd regex-2022.1.18
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBregex-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
