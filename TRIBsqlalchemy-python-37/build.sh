#!/bin/sh
#
${THOME}/build/unpack SQLAlchemy-1.3.19
cd SQLAlchemy-1.3.19
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBsqlalchemy-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
