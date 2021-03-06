#!/bin/sh
#
${THOME}/build/unpack geoip2-3.0.0
cd geoip2-3.0.0
/usr/versions/python-3.8/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.8/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBgeoip2-python-38 /tmp/pil
cd ..
rm -fr /tmp/pil
