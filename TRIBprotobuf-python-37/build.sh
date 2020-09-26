#!/bin/sh
#
# entertainingly, the python module has a filename clash
# with the regular protobuf download
#
${THOME}/build/unpack protobuf-3.13.0
cd protobuf-3.13.0
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBprotobuf-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
