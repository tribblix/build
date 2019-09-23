#!/bin/sh
#
${THOME}/build/unpack urllib3-1.25.5
cd urllib3-1.25.5
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBurllib3-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
