#!/bin/sh
#
${THOME}/build/unpack cachetools-4.2.4
cd cachetools-4.2.4
/usr/versions/python-3.10/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.10/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBcachetools-python-310 /tmp/pil
cd ..
rm -fr /tmp/pil
