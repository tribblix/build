#!/bin/sh
#
${THOME}/build/unpack vobject-0.9.6.1
cd vobject-0.9.6.1
/usr/versions/python-3.8/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.8/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBvobject-python-38 /tmp/pil
cd ..
rm -fr /tmp/pil
