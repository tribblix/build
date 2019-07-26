#!/bin/sh
#
${THOME}/build/unpack texttable-1.6.2
cd texttable-1.6.2
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBtexttable-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
