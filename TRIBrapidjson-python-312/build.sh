#!/bin/sh
#
${THOME}/build/unpack python-rapidjson-0.9.4
cd python-rapidjson-0.9.4
/usr/versions/python-3.12/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.12/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBrapidjson-python-312 /tmp/pil
cd ..
rm -fr /tmp/pil
