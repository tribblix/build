#!/bin/sh
#
${THOME}/build/unpack Whoosh-2.7.4
cd Whoosh-2.7.4
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBwhoosh-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
