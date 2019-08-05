#!/bin/sh
#
${THOME}/build/unpack typing-3.7.4
cd typing-3.7.4
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBtyping-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
