#!/bin/sh
#
${THOME}/build/unpack pandas-0.22.0
cd pandas-0.22.0
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpandas-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
