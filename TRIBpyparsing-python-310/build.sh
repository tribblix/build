#!/bin/sh
#
${THOME}/build/unpack pyparsing-2.4.7
cd pyparsing-2.4.7
/usr/versions/python-3.10/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.10/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpyparsing-python-310 /tmp/pil
cd ..
rm -fr /tmp/pil
