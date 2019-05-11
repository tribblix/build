#!/bin/sh
#
${THOME}/build/unpack RBTools-1.0.2
cd RBTools-1.0.2
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBrbtools-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
