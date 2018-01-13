#!/bin/sh
#
${THOME}/build/unpack et_xmlfile-1.0.1
cd et_xmlfile-1.0.1
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBetxmlfile-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
