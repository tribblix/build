#!/bin/sh
#
${THOME}/build/unpack humanfriendly-4.12.1
cd humanfriendly-4.12.1
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBhumanfriendly-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
