#!/bin/sh
#
${THOME}/build/unpack click-6.7
cd click-6.7
/usr/versions/python-3.6/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.6/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBclick-python-36 /tmp/pil
cd ..
rm -fr /tmp/pil
