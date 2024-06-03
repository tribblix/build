#!/bin/sh
#
${THOME}/build/unpack cdiff-1.0
cd cdiff-1.0
/usr/versions/python-3.12/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.12/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBcdiff-python-312 /tmp/pil
cd ..
rm -fr /tmp/pil
