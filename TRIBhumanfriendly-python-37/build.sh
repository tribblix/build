#!/bin/sh
#
${THOME}/build/unpack humanfriendly-4.17
cd humanfriendly-4.17
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBhumanfriendly-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
