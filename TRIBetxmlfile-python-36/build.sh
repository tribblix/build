#!/bin/sh
#
${THOME}/build/unpack et_xmlfile-1.0.1
cd et_xmlfile-1.0.1
/usr/versions/python-3.6/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.6/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBetxmlfile-python-36 /tmp/pil
cd ..
rm -fr /tmp/pil
