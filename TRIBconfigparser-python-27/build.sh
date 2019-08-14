#!/bin/sh
#
${THOME}/build/unpack configparser-3.8.1
cd configparser-3.8.1
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBconfigparser-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
