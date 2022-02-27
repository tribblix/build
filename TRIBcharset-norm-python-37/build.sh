#!/bin/sh
#
${THOME}/build/unpack charset-normalizer-2.0.12
cd charset-normalizer-2.0.12
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBcharset-norm-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
