#!/bin/sh
#
${THOME}/build/unpack publicsuffix-1.1.1
cd publicsuffix-1.1.1
wget -O publicsuffix/public_suffix_list.dat https://publicsuffix.org/list/public_suffix_list.dat
/usr/versions/python-3.8/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.8/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpublicsuffix-python-38 /tmp/pil
cd ..
rm -fr /tmp/pil
