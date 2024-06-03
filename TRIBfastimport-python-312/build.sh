#!/bin/sh
#
${THOME}/build/unpack fastimport-0.9.14
cd fastimport-0.9.14
/usr/versions/python-3.12/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.12/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBfastimport-python-312 /tmp/pil
cd ..
rm -fr /tmp/pil
