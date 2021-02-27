#!/bin/sh
#
${THOME}/build/unpack ExifRead-2.3.2
cd ExifRead-2.3.2
/usr/versions/python-3.9/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.9/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBexifread-python-39 /tmp/pil
cd ..
rm -fr /tmp/pil
