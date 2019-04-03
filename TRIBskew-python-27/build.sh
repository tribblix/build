#!/bin/sh
#
# can now use a release tarball as it was recently updated
#
${THOME}/build/unpack skew-0.17.0
cd skew-0.17.0
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBskew-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
