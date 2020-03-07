#!/bin/sh
#
${THOME}/build/unpack lunr-0.5.6
cd lunr-0.5.6
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBlunr-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
