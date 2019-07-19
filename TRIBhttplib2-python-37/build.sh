#!/bin/sh
#
${THOME}/build/unpack httplib2-0.11.3
cd httplib2-0.11.3
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBhttplib2-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
