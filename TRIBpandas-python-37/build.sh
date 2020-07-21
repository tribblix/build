#!/bin/sh
#
${THOME}/build/unpack pandas-1.0.5
cd pandas-1.0.5
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpandas-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
