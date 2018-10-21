#!/bin/sh
#
${THOME}/build/unpack pytoml-0.1.19
cd pytoml-0.1.19
/usr/versions/python-3.6/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.6/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpytoml-python-36 /tmp/pil
cd ..
rm -fr /tmp/pil
