#!/bin/sh
#
${THOME}/build/unpack cffi-1.14.4
cd cffi-1.14.4
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBcffi-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
