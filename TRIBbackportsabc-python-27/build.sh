#!/bin/sh
#
${THOME}/build/unpack backports_abc-0.5
cd backports_abc-0.5
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBbackportsabc-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
