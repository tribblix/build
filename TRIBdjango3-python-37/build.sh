#!/bin/sh
#
# Switch to 3.2 LTS once it's got an update or two
#
${THOME}/build/unpack Django-3.1.10
cd Django-3.1.10
rm -fr /tmp/p3a
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/p3a
${THOME}/build/create_pkg TRIBdjango3-python-37 /tmp/p3a
cd ..
rm -fr /tmp/p3a
