#!/bin/sh
#
${THOME}/build/unpack tld-0.12.4
cd tld-0.12.4
/usr/versions/python-3.8/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.8/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBtld-python-38 /tmp/pil
cd ..
rm -fr /tmp/pil
