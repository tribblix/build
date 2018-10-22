#!/bin/sh
#
# python-dateutil - needs six
#
${THOME}/build/unpack python-dateutil-2.7.3
cd python-dateutil-2.7.3
/usr/versions/python-3.7/bin/python3 setup.py build
/usr/versions/python-3.7/bin/python3 ./updatezinfo.py 
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBdateutil-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
