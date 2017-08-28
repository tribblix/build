#!/bin/sh
#
${THOME}/build/unpack singledispatch-3.4.0.3
cd singledispatch-3.4.0.3
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBsingledispatch-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
