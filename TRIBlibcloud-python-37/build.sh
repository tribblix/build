#!/bin/sh
#
${THOME}/build/unpack apache-libcloud-3.2.0
cd apache-libcloud-3.2.0
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBlibcloud-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
