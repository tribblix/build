#!/bin/sh
#
# mkdocs-material and mkdocs-material-extensions have a circular dependency,
# so package them together
#
rm -fr /tmp/pil
${THOME}/build/unpack mkdocs-material-6.2.8
cd mkdocs-material-6.2.8
/usr/versions/python-3.7/bin/python3 setup.py build
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
cd ..
${THOME}/build/unpack mkdocs-material-extensions-1.0.1
cd mkdocs-material-extensions-1.0.1
/usr/versions/python-3.7/bin/python3 setup.py build
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
cd ..
${THOME}/build/create_pkg TRIBmkdocs-material-python-37 /tmp/pil
rm -fr /tmp/pil
