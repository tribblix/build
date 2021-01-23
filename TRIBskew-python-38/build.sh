#!/bin/sh
#
# need commits after the latest release
#
#${THOME}/build/unpack skew-0.17.0
#cd skew-0.17.0
#
git clone https://github.com/scopely-devops/skew
cd skew
/usr/versions/python-3.8/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.8/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBskew-python-38 /tmp/pil
cd ..
rm -fr /tmp/pil
