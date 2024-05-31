#!/bin/sh
#
${THOME}/build/unpack toml-0.10.2
cd toml-0.10.2
/usr/versions/python-3.12/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.12/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBtoml-python-312 /tmp/pil
cd ..
rm -fr /tmp/pil
