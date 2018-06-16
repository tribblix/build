#!/bin/sh
#
${THOME}/build/unpack Markdown-2.6.11
cd Markdown-2.6.11
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBmarkdown-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
