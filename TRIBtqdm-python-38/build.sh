#!/bin/sh
#
${THOME}/build/unpack tqdm-4.50.0
cd tqdm-4.50.0
/usr/versions/python-3.8/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.8/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBtqdm-python-38 /tmp/pil
cd ..
rm -fr /tmp/pil
