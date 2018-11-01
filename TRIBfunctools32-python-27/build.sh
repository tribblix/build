#!/bin/sh
#
${THOME}/build/unpack functools32-3.2.3-2
cd functools32-3.2.3-2
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBfunctools32-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
