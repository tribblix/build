#!/bin/sh
#
${THOME}/build/unpack pyxdg-0.25
cd pyxdg-0.25
python setup.py build
python setup.py install --root=/tmp/xx1
${THOME}/build/create_pkg TRIBxdg-python-27 /tmp/xx1
rm -fr /tmp/xx1
