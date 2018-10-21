#!/bin/sh
#
${THOME}/build/unpack pandas-0.23.4
cd pandas-0.23.4
/usr/versions/python-3.6/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.6/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpandas-python-36 /tmp/pil
cd ..
rm -fr /tmp/pil
