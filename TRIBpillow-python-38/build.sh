#!/bin/sh
#
${THOME}/build/unpack Pillow-7.2.0
cd Pillow-7.2.0
/usr/versions/python-3.8/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.8/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpillow-python-38 /tmp/pil
cd ..
rm -fr /tmp/pil
