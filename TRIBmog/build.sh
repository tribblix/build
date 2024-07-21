#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# needs pygments and file-magic and mediainfo
#
${THOME}/build/unpack mog-0.6.0
cd mog-0.6.0
#
# we need the file from file-magic
#
gsed -i "s:\['file':\['file-5.45':" mog/__init__.py
/usr/versions/python-3.12/bin/python3  setup.py build
rm -fr /tmp/sut
/usr/versions/python-3.12/bin/python3  setup.py install --root=/tmp/sut
${THOME}/build/create_pkg TRIBmog /tmp/sut
cd ..
rm -fr /tmp/sut
