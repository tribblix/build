#!/bin/sh
#
${THOME}/build/unpack xmltodict-0.12.0
cd xmltodict-0.12.0
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBxmltodict-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
