#!/bin/sh
#
${THOME}/build/unpack pytoml-0.1.13
cd pytoml-0.1.13
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpytoml-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
