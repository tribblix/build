#!/bin/sh
#
${THOME}/build/unpack sqlparse-0.2.3
cd sqlparse-0.2.3
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBsqlparse-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
