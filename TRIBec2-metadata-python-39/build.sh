#!/bin/sh
#
${THOME}/build/unpack ec2-metadata-2.8.0
cd ec2-metadata-2.8.0
/usr/versions/python-3.9/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.9/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBec2-metadata-python-39 /tmp/pil
cd ..
rm -fr /tmp/pil
