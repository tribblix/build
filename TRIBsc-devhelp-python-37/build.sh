#!/bin/sh
#
${THOME}/build/unpack sphinxcontrib-devhelp-1.0.1
cd sphinxcontrib-devhelp-1.0.1
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBsc-devhelp-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
