#!/bin/sh
#
${THOME}/build/unpack paramiko-2.6.0
cd paramiko-2.6.0
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBparamiko-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
