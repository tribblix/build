#!/bin/sh
#
${THOME}/build/unpack Radicale-3.0.4
cd Radicale-3.0.4
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBradicale-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
