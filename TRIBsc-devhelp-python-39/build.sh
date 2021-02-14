#!/bin/sh
#
${THOME}/build/unpack sphinxcontrib-devhelp-1.0.2
cd sphinxcontrib-devhelp-1.0.2
/usr/versions/python-3.9/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.9/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBsc-devhelp-python-39 /tmp/pil
cd ..
rm -fr /tmp/pil
