#!/bin/sh
#
${THOME}/build/unpack Sphinx-2.3.0
cd Sphinx-2.3.0
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pdu
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pdu
${THOME}/build/create_pkg TRIBsphinx-37 /tmp/pdu
cd ..
rm -fr /tmp/pdu
