#!/bin/sh
#
${THOME}/build/unpack mock-4.0.3
cd mock-4.0.3
/usr/versions/python-3.10/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.10/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBmock-python-310 /tmp/pil
cd ..
rm -fr /tmp/pil
