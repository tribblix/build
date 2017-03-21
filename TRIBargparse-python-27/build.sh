#!/bin/sh
#
${THOME}/build/unpack argparse-1.4.0
cd argparse-1.4.0
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBargparse-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
