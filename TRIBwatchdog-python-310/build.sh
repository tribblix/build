#!/bin/sh
#
${THOME}/build/unpack watchdog-2.1.9
cd watchdog-2.1.9
/usr/versions/python-3.10/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.10/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBwatchdog-python-310 /tmp/pil
cd ..
rm -fr /tmp/pil
