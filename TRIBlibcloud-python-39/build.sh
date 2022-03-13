#!/bin/sh
#
${THOME}/build/unpack apache-libcloud-3.5.0
cd apache-libcloud-3.5.0
/usr/versions/python-3.9/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.9/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBlibcloud-python-39 /tmp/pil
cd ..
rm -fr /tmp/pil
