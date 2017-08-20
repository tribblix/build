#!/bin/sh
#
# radicale2 - requires vobject
#
# radicale 2.x is incompatible with 1.x, and requires python3
#
${THOME}/build/unpack Radicale-2.1.4
cd Radicale-2.1.4
/usr/versions/python-3.6/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.6/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBradicale2-python-36 /tmp/pil
cd ..
rm -fr /tmp/pil
