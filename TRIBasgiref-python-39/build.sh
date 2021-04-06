#!/bin/sh
#
${THOME}/build/unpack asgiref-3.3.2
cd asgiref-3.3.2
/usr/versions/python-3.9/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.9/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBasgiref-python-39 /tmp/pil
cd ..
rm -fr /tmp/pil
