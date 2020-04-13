#!/bin/sh
#
${THOME}/build/unpack pyxdg-0.26
cd pyxdg-0.26
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/xx1
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/xx1
${THOME}/build/create_pkg TRIBxdg-python-37 /tmp/xx1
rm -fr /tmp/xx1
