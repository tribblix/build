#!/bin/sh
#
#${THOME}/build/unpack gixy-0.1.20
#cd gixy-0.1.20
git clone https://github.com/yandex/gixy
cd gixy
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/sut
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/sut
${THOME}/build/create_pkg TRIBgixy-python-37 /tmp/sut
cd ..
rm -fr /tmp/sut
