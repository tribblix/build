#!/bin/sh
#
${THOME}/build/unpack pytz-2018.5
cd pytz-2018.5
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpytz-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
