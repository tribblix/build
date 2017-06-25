#!/bin/sh
#
${THOME}/build/unpack vnc2flv-20100207
cd vnc2flv-20100207
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBvnc2flv-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
