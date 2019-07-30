#!/bin/sh
#
${THOME}/build/unpack pyparsing-2.4.2
cd pyparsing-2.4.2
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpyparsing-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
