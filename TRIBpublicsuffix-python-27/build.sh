#!/bin/sh
#
${THOME}/build/unpack publicsuffix-1.1.0
cd publicsuffix-1.1.0
wget -O publicsuffix/public_suffix_list.dat https://publicsuffix.org/list/public_suffix_list.dat
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpublicsuffix-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
