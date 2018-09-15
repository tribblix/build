#!/bin/sh
#
${THOME}/build/unpack mkdocs-material-3.0.4
cd mkdocs-material-3.0.4
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBmkdocs-material-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
