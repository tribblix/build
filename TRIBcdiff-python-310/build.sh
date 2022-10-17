#!/bin/sh
#
${THOME}/build/unpack cdiff-1.0
cd cdiff-1.0
/usr/versions/python-3.10/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.10/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBcdiff-python-310 /tmp/pil
cd ..
rm -fr /tmp/pil
