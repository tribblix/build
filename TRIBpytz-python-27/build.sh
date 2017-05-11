#!/bin/sh
#
${THOME}/build/unpack pytz-2017.2
cd pytz-2017.2
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpytz-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
