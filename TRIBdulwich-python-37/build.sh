#!/bin/sh
#
${THOME}/build/unpack dulwich-0.19.6
cd dulwich-0.19.6
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBdulwich-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
