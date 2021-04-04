#!/bin/sh
#
${THOME}/build/unpack PyYAML-5.4.1
cd PyYAML-5.4.1
/usr/versions/python-3.9/bin/python3 setup.py --with-libyaml build
rm -fr /tmp/pil
/usr/versions/python-3.9/bin/python3 setup.py --with-libyaml install --root=/tmp/pil
${THOME}/build/create_pkg TRIByaml-python-39 /tmp/pil
cd ..
rm -fr /tmp/pil
