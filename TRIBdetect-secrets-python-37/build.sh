#!/bin/sh
#
${THOME}/build/unpack detect_secrets-0.14.2
cd detect_secrets-0.14.2
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBdetect-secrets-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
