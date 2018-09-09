#!/bin/sh
#
${THOME}/build/unpack SQLAlchemy-1.2.11
cd SQLAlchemy-1.2.11
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBsqlalchemy-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
