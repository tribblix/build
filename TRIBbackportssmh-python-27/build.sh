#!/bin/sh
#
${THOME}/build/unpack backports.ssl_match_hostname-3.5.0.1
cd backports.ssl_match_hostname-3.5.0.1
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBbackportssmh-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
