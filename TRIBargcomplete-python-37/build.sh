#!/bin/sh
#
${THOME}/build/unpack argcomplete-1.10.3
cd argcomplete-1.10.3
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBargcomplete-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
