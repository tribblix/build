#!/bin/sh
#
${THOME}/build/unpack beautifulsoup4-4.9.3
cd beautifulsoup4-4.9.3
/usr/versions/python-3.8/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.8/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBbeautifulsoup4-python-38 /tmp/pil
cd ..
rm -fr /tmp/pil
