#!/bin/sh
#
${THOME}/build/unpack iampoliciesgonewild-1.0.6.2
cd iampoliciesgonewild-1.0.6.2
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBipgw-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
