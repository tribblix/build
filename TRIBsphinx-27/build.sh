#!/bin/sh
#
${THOME}/build/unpack Sphinx-1.8.5
cd Sphinx-1.8.5
python setup.py build
rm -fr /tmp/pdu
python setup.py install --root=/tmp/pdu
${THOME}/build/create_pkg TRIBsphinx-27 /tmp/pdu
cd ..
rm -fr /tmp/pdu
