#!/bin/sh
#
# supervisord (needs meld3)
#
${THOME}/build/unpack supervisor-3.3.3
cd supervisor-3.3.3
python setup.py build
python setup.py install --root=/tmp/pis
${THOME}/build/create_pkg TRIBsupervisor-python-27 /tmp/pis
cd ..
rm -fr /tmp/pis
