#!/bin/sh
#
${THOME}/build/unpack urllib3-1.23
cd urllib3-1.23
/usr/versions/python-3.6/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.6/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBurllib3-python-36 /tmp/pil
cd ..
rm -fr /tmp/pil
