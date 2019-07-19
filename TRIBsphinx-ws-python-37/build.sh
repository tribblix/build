#!/bin/sh
#
${THOME}/build/unpack sphinxcontrib-websupport-1.1.0
cd sphinxcontrib-websupport-1.1.0
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBsphinx-ws-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
