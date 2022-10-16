#!/bin/sh
#
${THOME}/build/unpack Radicale-3.1.8
cd Radicale-3.1.8
/usr/versions/python-3.10/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.10/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBradicale-python-310 /tmp/pil
cd ..
rm -fr /tmp/pil
