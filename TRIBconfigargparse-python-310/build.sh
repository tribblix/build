#!/bin/sh
#
${THOME}/build/unpack ConfigArgParse-1.5.3
cd ConfigArgParse-1.5.3
/usr/versions/python-3.10/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.10/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBconfigargparse-python-310 /tmp/pil
cd ..
rm -fr /tmp/pil
