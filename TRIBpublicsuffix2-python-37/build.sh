#!/bin/sh
#
${THOME}/build/unpack publicsuffix2-2.20191221
cd publicsuffix2-2.20191221
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpublicsuffix2-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
