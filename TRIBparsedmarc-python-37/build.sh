#!/bin/sh
#
${THOME}/build/unpack parsedmarc-6.7.2
cd parsedmarc-6.7.2
#
# urllib3 is overconstrained
#
sed -i s:1.25:1.26: setup.py
sed -i s:1.25:1.26: parsedmarc.egg-info/requires.txt
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBparsedmarc-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
