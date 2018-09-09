#!/bin/sh
#
${THOME}/build/unpack PyMySQL-0.9.2
cd PyMySQL-0.9.2
/usr/versions/python-3.6/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.6/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpymysql-python-36 /tmp/pil
cd ..
rm -fr /tmp/pil
