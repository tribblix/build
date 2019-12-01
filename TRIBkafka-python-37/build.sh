#!/bin/sh
#
${THOME}/build/unpack kafka-python-1.4.7
cd kafka-python-1.4.7
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBkafka-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
