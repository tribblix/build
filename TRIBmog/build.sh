#!/bin/sh
#
# needs pygments and file-magic amd mediainfo
#
${THOME}/build/unpack mog-0.6.0
cd mog-0.6.0
#
# we need the file from file-magic
#
gsed -i "s:\['file':\['file-5.37':" mog/__init__.py
python setup.py build
rm -fr /tmp/sut
python setup.py install --root=/tmp/sut
${THOME}/build/create_pkg TRIBmog /tmp/sut
cd ..
rm -fr /tmp/sut
