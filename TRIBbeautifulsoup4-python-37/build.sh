#!/bin/sh
#
${THOME}/build/unpack beautifulsoup4-4.8.2
cd beautifulsoup4-4.8.2
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBbeautifulsoup4-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
