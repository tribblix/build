#!/bin/sh
#
${THOME}/build/unpack mail-parser-3.9.2
cd mail-parser-3.9.2
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBmail-parser-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
