#!/bin/sh
#
# used by c7n, downrev to match its requirements
#
${THOME}/build/unpack jsonpickle-1.3
cd jsonpickle-1.3
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBjsonpickle-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
