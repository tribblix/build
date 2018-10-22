#!/bin/sh
#
${THOME}/build/unpack opinel-3.3.4
cd opinel-3.3.4
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBopinel-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
