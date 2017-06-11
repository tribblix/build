#!/bin/sh
#
${THOME}/build/unpack chardet-3.0.4
cd chardet-3.0.4
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBchardet-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
