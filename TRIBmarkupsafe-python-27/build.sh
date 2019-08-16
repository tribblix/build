#!/bin/sh
#
${THOME}/build/unpack MarkupSafe-1.1.1
cd MarkupSafe-1.1.1
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBmarkupsafe-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
