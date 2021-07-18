#!/bin/sh
#
# note that elastic have messed with the name and versioning
# it was originally called elasticsearch-dsl-py, now it's just
# the simple elasticsearch-dsl
#
${THOME}/build/unpack elasticsearch-dsl-7.4.0
cd elasticsearch-dsl-7.4.0
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBelastic-dsl-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
