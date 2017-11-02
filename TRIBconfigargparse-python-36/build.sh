#!/bin/sh
#
${THOME}/build/unpack ConfigArgParse-0.12.0
cd ConfigArgParse-0.12.0
/usr/versions/python-3.6/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.6/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBconfigargparse-python-36 /tmp/pil
cd ..
rm -fr /tmp/pil
