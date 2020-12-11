#!/bin/sh
#
${THOME}/build/unpack humanfriendly-9.1
cd humanfriendly-9.1
/usr/versions/python-3.8/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.8/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBhumanfriendly-python-38 /tmp/pil
cd ..
rm -fr /tmp/pil
