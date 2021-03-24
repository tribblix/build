#!/bin/sh
#
${THOME}/build/unpack Sphinx-3.5.3
cd Sphinx-3.5.3
/usr/versions/python-3.9/bin/python3 setup.py build
rm -fr /tmp/pdu
/usr/versions/python-3.9/bin/python3 setup.py install --root=/tmp/pdu
${THOME}/build/create_pkg TRIBsphinx-39 /tmp/pdu
cd ..
rm -fr /tmp/pdu
