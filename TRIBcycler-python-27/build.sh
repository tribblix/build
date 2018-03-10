#!/bin/sh
#
${THOME}/build/unpack cycler-0.10.0
cd cycler-0.10.0
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBcycler-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
