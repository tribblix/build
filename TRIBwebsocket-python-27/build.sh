#!/bin/sh
#
${THOME}/build/unpack websocket_client-0.48.0
cd websocket_client-0.48.0
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBwebsocket-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
