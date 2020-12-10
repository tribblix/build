#!/bin/sh
#
${THOME}/build/unpack pyleri-1.3.3
cd pyleri-1.3.3
/usr/versions/python-3.8/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.8/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpyleri-python-38 /tmp/pil
cd ..
rm -fr /tmp/pil
