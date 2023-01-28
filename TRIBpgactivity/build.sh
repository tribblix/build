#!/bin/sh
#
${THOME}/build/unpack pg_activity-3.0.3
cd pg_activity-3.0.3
/usr/versions/python-3.9/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.9/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpgactivity /tmp/pil
cd ..
rm -fr /tmp/pil
