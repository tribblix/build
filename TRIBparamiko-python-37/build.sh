#!/bin/sh
#
${THOME}/build/unpack paramiko-2.4.2
cd paramiko-2.4.2
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBparamiko-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
