#!/bin/sh
#
# note that PyYAML 3.13 is the same as 3.12 except for python 3.7 support
# we have to use the newer version here, but no need to bump elsewhere
#
${THOME}/build/unpack PyYAML-3.13
cd PyYAML-3.13
/usr/versions/python-3.7/bin/python3 setup.py --with-libyaml build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py --with-libyaml install --root=/tmp/pil
${THOME}/build/create_pkg TRIByaml-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
