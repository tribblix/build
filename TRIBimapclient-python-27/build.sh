#!/bin/sh
#
${THOME}/build/unpack IMAPClient-2.1.0
cd IMAPClient-2.1.0
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBimapclient-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
