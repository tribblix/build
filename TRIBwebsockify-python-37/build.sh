#!/bin/sh
#
# used by noVNC
#
${THOME}/build/unpack websockify-0.9.0
cd websockify-0.9.0
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBwebsockify-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
