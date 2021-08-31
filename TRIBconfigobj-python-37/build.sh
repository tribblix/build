#!/bin/sh
#
${THOME}/build/unpack configobj-5.0.6
cd configobj-5.0.6
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBconfigobj-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
