#!/bin/sh
#
${THOME}/build/unpack chardet-3.0.4
cd chardet-3.0.4
/usr/versions/python-3.8/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.8/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBchardet-python-38 /tmp/pil
cd ..
rm -fr /tmp/pil
