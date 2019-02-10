#!/bin/sh
#
${THOME}/build/unpack dnspython-1.16.0
cd dnspython-1.16.0
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBdnspython-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
