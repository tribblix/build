#!/bin/sh
#
${THOME}/build/unpack requests-2.28.1
cd requests-2.28.1
/usr/versions/python-3.10/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.10/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBrequests-python-310 /tmp/pil
cd ..
rm -fr /tmp/pil
