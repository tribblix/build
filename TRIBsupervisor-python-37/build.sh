#!/bin/sh
#
${THOME}/build/unpack supervisor-4.1.0
cd supervisor-4.1.0
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pis
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pis
${THOME}/build/create_pkg TRIBsupervisor-python-37 /tmp/pis
cd ..
rm -fr /tmp/pis
