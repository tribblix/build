#!/bin/sh
#
${THOME}/build/unpack yaswfp-0.9.3
cd yaswfp-0.9.3
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIByaswfp-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
