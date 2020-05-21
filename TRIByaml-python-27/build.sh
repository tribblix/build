#!/bin/sh
#
${THOME}/build/unpack PyYAML-5.3.1
cd PyYAML-5.3.1
python setup.py --with-libyaml build
rm -fr /tmp/pil
python setup.py --with-libyaml install --root=/tmp/pil
${THOME}/build/create_pkg TRIByaml-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
