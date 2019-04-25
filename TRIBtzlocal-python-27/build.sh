#!/bin/sh
#
${THOME}/build/unpack tzlocal-1.5.1
cd tzlocal-1.5.1
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBtzlocal-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
