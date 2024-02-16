#!/bin/sh
#
# python-dateutil - needs six
#
${THOME}/build/unpack python-dateutil-2.8.2
cd python-dateutil-2.8.2
/usr/versions/python-3.11/bin/python3 setup.py build
/usr/versions/python-3.11/bin/python3 ./updatezinfo.py
rm -fr /tmp/pil
/usr/versions/python-3.11/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBdateutil-python-311 /tmp/pil
cd ..
rm -fr /tmp/pil
