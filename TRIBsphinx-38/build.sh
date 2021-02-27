#!/bin/sh
#
${THOME}/build/unpack Sphinx-3.5.1
cd Sphinx-3.5.1
/usr/versions/python-3.8/bin/python3 setup.py build
rm -fr /tmp/pdu
/usr/versions/python-3.8/bin/python3 setup.py install --root=/tmp/pdu
${THOME}/build/create_pkg TRIBsphinx-38 /tmp/pdu
cd ..
rm -fr /tmp/pdu
