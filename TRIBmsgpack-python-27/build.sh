#!/bin/sh
#
${THOME}/build/unpack msgpack-0.5.6
cd msgpack-0.5.6
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBmsgpack-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
