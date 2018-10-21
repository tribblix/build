#!/bin/sh
#
${THOME}/build/unpack SQLAlchemy-1.2.12
cd SQLAlchemy-1.2.12
/usr/versions/python-3.6/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.6/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBsqlalchemy-python-36 /tmp/pil
cd ..
rm -fr /tmp/pil
