#!/bin/sh
#
${THOME}/build/unpack argh-0.26.2
cd argh-0.26.2
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBargh-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
