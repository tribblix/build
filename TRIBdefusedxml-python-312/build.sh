#!/bin/sh
#
${THOME}/build/unpack defusedxml-0.7.1
cd defusedxml-0.7.1
/usr/versions/python-3.12/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.12/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBdefusedxml-python-312 /tmp/pil
cd ..
rm -fr /tmp/pil