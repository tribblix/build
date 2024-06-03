#!/bin/sh
#
${THOME}/build/unpack ExifRead-3.0.0
cd ExifRead-3.0.0
/usr/versions/python-3.12/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.12/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBexifread-python-312 /tmp/pil
cd ..
rm -fr /tmp/pil
