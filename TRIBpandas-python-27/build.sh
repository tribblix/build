#!/bin/sh
#
${THOME}/build/unpack pandas-0.23.4
cd pandas-0.23.4
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpandas-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
