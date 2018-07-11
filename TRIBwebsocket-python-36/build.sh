#!/bin/sh
#
${THOME}/build/unpack websocket_client-0.48.0
cd websocket_client-0.48.0
/usr/versions/python-3.6/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.6/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBwebsocket-python-36 /tmp/pil
cd ..
rm -fr /tmp/pil
