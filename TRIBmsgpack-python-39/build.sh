#!/bin/sh
#
${THOME}/build/unpack msgpack-0.6.2
cd msgpack-0.6.2
/usr/versions/python-3.9/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.9/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBmsgpack-python-39 /tmp/pil
cd ..
rm -fr /tmp/pil
