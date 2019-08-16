#!/bin/sh
#
${THOME}/build/unpack sphinxcontrib-websupport-1.1.2
cd sphinxcontrib-websupport-1.1.2
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBsphinx-ws-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
