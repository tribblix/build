#!/bin/sh
#
${THOME}/build/unpack kafka-python-2.0.1
cd kafka-python-2.0.1
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBkafka-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
