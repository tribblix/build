#!/bin/sh
#
${THOME}/build/unpack humanize-3.10.0
cd humanize-3.10.0
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBhumanize-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
