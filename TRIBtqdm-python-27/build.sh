#!/bin/sh
#
${THOME}/build/unpack tqdm-4.39.0
cd tqdm-4.39.0
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBtqdm-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
