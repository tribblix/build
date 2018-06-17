#!/bin/sh
#
${THOME}/build/unpack mkdocs-material-2.9.0
cd mkdocs-material-2.9.0
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBmkdocs-material-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
