#!/bin/sh
#
${THOME}/build/unpack psutil-5.4.7
cd psutil-5.4.7
/usr/versions/python-3.6/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.6/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpsutil-python-36 /tmp/pil
cd ..
rm -fr /tmp/pil
