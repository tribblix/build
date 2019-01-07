#!/bin/sh
#
# can now use a release tarball as it was recently update
#
${THOME}/build/unpack skew-0.17.0
cd skew-0.17.0
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBskew-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
