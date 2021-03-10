#!/bin/sh
#
${THOME}/build/unpack checkdmarc-4.4.1
cd checkdmarc-4.4.1
/usr/versions/python-3.8/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.8/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBcheckdmarc-python-38 /tmp/pil
cd ..
rm -fr /tmp/pil
