#!/bin/sh
#
${THOME}/build/unpack html5lib-1.1
cd html5lib-1.1
/usr/versions/python-3.9/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.9/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBhtml5lib-python-39 /tmp/pil
cd ..
rm -fr /tmp/pil
