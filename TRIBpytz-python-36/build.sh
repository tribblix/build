#!/bin/sh
#
${THOME}/build/unpack pytz-2017.2
cd pytz-2017.2
/usr/versions/python-3.6/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.6/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpytz-python-36 /tmp/pil
cd ..
rm -fr /tmp/pil
