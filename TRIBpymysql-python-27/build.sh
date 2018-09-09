#!/bin/sh
#
${THOME}/build/unpack PyMySQL-0.9.2
cd PyMySQL-0.9.2
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpymysql-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
