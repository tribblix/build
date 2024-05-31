#!/bin/sh
#
${THOME}/build/unpack ghp-import-2.1.0
cd ghp-import-2.1.0
/usr/versions/python-3.12/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.12/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBghp-import-python-312 /tmp/pil
cd ..
rm -fr /tmp/pil
