#!/bin/sh
#
${THOME}/build/unpack mkdocs-0.17.4
cd mkdocs-0.17.4
/usr/versions/python-3.6/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.6/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBmkdocs-python-36 /tmp/pil
cd ..
rm -fr /tmp/pil
