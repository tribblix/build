#!/bin/sh
#
${THOME}/build/unpack nltk-3.5
cd nltk-3.5
/usr/versions/python-3.9/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.9/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBnltk-python-39 /tmp/pil
cd ..
rm -fr /tmp/pil
