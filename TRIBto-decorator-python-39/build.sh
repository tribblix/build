#!/bin/sh
#
${THOME}/build/unpack timeout-decorator-0.5.0
cd timeout-decorator-0.5.0
/usr/versions/python-3.9/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.9/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBto-decorator-python-39 /tmp/pil
cd ..
rm -fr /tmp/pil
