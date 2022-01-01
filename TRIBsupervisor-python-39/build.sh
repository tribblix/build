#!/bin/sh
#
${THOME}/build/unpack supervisor-4.2.4
cd supervisor-4.2.4
/usr/versions/python-3.9/bin/python3 setup.py build
rm -fr /tmp/pis
/usr/versions/python-3.9/bin/python3 setup.py install --root=/tmp/pis
${THOME}/build/create_pkg TRIBsupervisor-python-39 /tmp/pis
cd ..
rm -fr /tmp/pis
