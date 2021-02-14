#!/bin/sh
#
${THOME}/build/unpack patroni-1.6.5
cd patroni-1.6.5
/usr/versions/python-3.8/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.8/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpatroni-python-38 /tmp/pil
cd ..
rm -fr /tmp/pil
