#!/bin/sh
#
${THOME}/build/unpack frozendict-1.2
cd frozendict-1.2
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBfrozendict-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
