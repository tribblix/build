#!/bin/sh
#
${THOME}/build/unpack psutil-5.9.2
cd psutil-5.9.2
/usr/versions/python-3.10/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.10/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpsutil-python-310 /tmp/pil
cd ..
rm -fr /tmp/pil
