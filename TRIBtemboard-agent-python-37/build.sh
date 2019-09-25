#!/bin/sh
#
${THOME}/build/unpack temboard-agent-4.1
cd temboard-agent-4.1
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBtemboard-agent-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
