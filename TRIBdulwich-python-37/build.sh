#!/bin/sh
#
${THOME}/build/unpack dulwich-0.20.23
cd dulwich-0.20.23
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBdulwich-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
