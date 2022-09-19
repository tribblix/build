#!/bin/sh
#
${THOME}/build/unpacek pg_activity-3.0.0
cd pg_activity-3.0.0
/usr/versions/python-3.9/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.9/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpgactivity /tmp/pil
cd ..
rm -fr /tmp/pil
