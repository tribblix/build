#!/bin/sh
#
${THOME}/build/unpack markdown-include-0.5.1
cd markdown-include-0.5.1
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBmarkdown-inc-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
