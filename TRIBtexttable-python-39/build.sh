#!/bin/sh
#
${THOME}/build/unpack texttable-1.6.3
cd texttable-1.6.3
/usr/versions/python-3.9/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.9/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBtexttable-python-39 /tmp/pil
cd ..
rm -fr /tmp/pil
