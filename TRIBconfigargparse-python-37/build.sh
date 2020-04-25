#!/bin/sh
#
${THOME}/build/unpack ConfigArgParse-1.2.3
cd ConfigArgParse-1.2.3
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBconfigargparse-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
