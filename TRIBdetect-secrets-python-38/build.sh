#!/bin/sh
#
${THOME}/build/unpack detect_secrets-0.14.3
cd detect_secrets-0.14.3
/usr/versions/python-3.8/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.8/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBdetect-secrets-python-38 /tmp/pil
cd ..
rm -fr /tmp/pil
