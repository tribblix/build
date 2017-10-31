#!/bin/sh
#
# python-dateutil - needs six
#
${THOME}/build/unpack python-dateutil-2.6.1
cd python-dateutil-2.6.1
/usr/versions/python-3.6/bin/python3 setup.py build
/usr/versions/python-3.6/bin/python3 ./updatezinfo.py 
rm -fr /tmp/pil
/usr/versions/python-3.6/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBdateutil-python-36 /tmp/pil
cd ..
rm -fr /tmp/pil
