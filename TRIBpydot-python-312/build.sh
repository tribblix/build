#!/bin/sh
#
${THOME}/build/unpack pydot-1.4.2
cd pydot-1.4.2
/usr/versions/python-3.12/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.12/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpydot-python-312 /tmp/pil
cd ..
rm -fr /tmp/pil
