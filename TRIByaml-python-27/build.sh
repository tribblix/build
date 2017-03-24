#!/bin/sh
#
${THOME}/build/unpack PyYAML-3.12
cd PyYAML-3.12
python setup.py --with-libyaml build
rm -fr /tmp/pil
python setup.py --with-libyaml install --root=/tmp/pil
${THOME}/build/create_pkg TRIByaml-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
