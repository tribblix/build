#!/bin/sh
#
${THOME}/build/unpack tqdm-4.64.0
cd tqdm-4.64.0
/usr/versions/python-3.9/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.9/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBtqdm-python-39 /tmp/pil
cd ..
rm -fr /tmp/pil
