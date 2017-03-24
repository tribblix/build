#!/bin/sh
#
${THOME}/build/unpack PyYAML-3.12
cd PyYAML-3.12
/usr/versions/python-3.6/bin/python3 setup.py --with-libyaml build
rm -fr /tmp/pil
/usr/versions/python-3.6/bin/python3 setup.py --with-libyaml install --root=/tmp/pil
${THOME}/build/create_pkg TRIByaml-python-36 /tmp/pil
cd ..
rm -fr /tmp/pil
