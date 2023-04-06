#!/bin/sh
#
${THOME}/build/unpack nltk-3.7
cd nltk-3.7
/usr/versions/python-3.11/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.11/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBnltk-python-311 /tmp/pil
cd ..
rm -fr /tmp/pil
