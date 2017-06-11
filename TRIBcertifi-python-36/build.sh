#!/bin/sh
#
${THOME}/build/unpack certifi-2017.4.17
cd certifi-2017.4.17
/usr/versions/python-3.6/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.6/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBcertifi-python-36 /tmp/pil
cd ..
rm -fr /tmp/pil
