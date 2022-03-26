#!/bin/sh
#
${THOME}/build/unpack paramiko-2.10.3
cd paramiko-2.10.3
/usr/versions/python-3.9/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.9/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBparamiko-python-39 /tmp/pil
cd ..
rm -fr /tmp/pil
