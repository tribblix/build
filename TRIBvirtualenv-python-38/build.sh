#!/bin/sh
#
${THOME}/build/unpack virtualenv-20.1.0
cd virtualenv-20.1.0
/usr/versions/python-3.8/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.8/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBvirtualenv-python-38 /tmp/pil
cd ..
rm -fr /tmp/pil
