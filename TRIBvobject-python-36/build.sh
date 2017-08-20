#!/bin/sh
#
${THOME}/build/unpack vobject-0.9.5
cd vobject-0.9.5
/usr/versions/python-3.6/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.6/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBvobject-python-36 /tmp/pil
cd ..
rm -fr /tmp/pil
