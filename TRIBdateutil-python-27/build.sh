#!/bin/sh
#
# python-dateutil - needs six
#
${THOME}/build/unpack python-dateutil-2.8.1
cd python-dateutil-2.8.1
python setup.py build
python ./updatezinfo.py 
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBdateutil-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
