#!/bin/sh
#
${THOME}/build/unpack click-7.1.2
cd click-7.1.2
/usr/versions/python-3.8/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.8/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBclick-python-38 /tmp/pil
cd ..
rm -fr /tmp/pil
