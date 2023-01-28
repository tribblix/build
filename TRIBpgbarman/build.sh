#!/bin/sh
#
${THOME}/build/unpack barman-3.4.0
cd barman-3.4.0
/usr/versions/python-3.9/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.9/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpgbarman /tmp/pil
cd ..
rm -fr /tmp/pil
