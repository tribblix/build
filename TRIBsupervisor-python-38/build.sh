#!/bin/sh
#
${THOME}/build/unpack supervisor-4.2.1
cd supervisor-4.2.1
/usr/versions/python-3.8/bin/python3 setup.py build
rm -fr /tmp/pis
/usr/versions/python-3.8/bin/python3 setup.py install --root=/tmp/pis
${THOME}/build/create_pkg TRIBsupervisor-python-38 /tmp/pis
cd ..
rm -fr /tmp/pis
