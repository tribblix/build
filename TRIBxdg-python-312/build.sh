#!/bin/sh
#
${THOME}/build/unpack pyxdg-0.28
cd pyxdg-0.28
/usr/versions/python-3.12/bin/python3 setup.py build
rm -fr /tmp/xx1
/usr/versions/python-3.12/bin/python3 setup.py install --root=/tmp/xx1
${THOME}/build/create_pkg TRIBxdg-python-312 /tmp/xx1
rm -fr /tmp/xx1
