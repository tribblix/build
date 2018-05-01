#!/bin/sh
#
${THOME}/build/unpack crtsh-0.2.0
cd crtsh-0.2.0
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBcrtsh-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
