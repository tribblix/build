#!/bin/sh
#
${THOME}/build/unpack PySocks-1.6.8
cd PySocks-1.6.8
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpysocks-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
