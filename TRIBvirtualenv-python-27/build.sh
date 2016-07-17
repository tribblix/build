#!/bin/sh
#
${THOME}/build/unpack virtualenv-15.0.2
cd virtualenv-15.0.2
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBvirtualenv-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
