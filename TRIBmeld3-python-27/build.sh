#!/bin/sh
#
${THOME}/build/unpack meld3-1.0.2
cd meld3-1.0.2
python setup.py build
python setup.py install --root=/tmp/pim
${THOME}/build/create_pkg TRIBmeld3-python-27 /tmp/pim
rm -fr /tmp/pim
