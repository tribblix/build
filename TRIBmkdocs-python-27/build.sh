#!/bin/sh
#
${THOME}/build/unpack mkdocs-1.0.4
cd mkdocs-1.0.4
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBmkdocs-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
