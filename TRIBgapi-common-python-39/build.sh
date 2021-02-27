#!/bin/sh
#
${THOME}/build/unpack googleapis-common-protos-1.53.0
cd googleapis-common-protos-1.53.0
/usr/versions/python-3.9/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.9/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBgapi-common-python-39 /tmp/pil
cd ..
rm -fr /tmp/pil
