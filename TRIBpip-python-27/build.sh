#!/bin/sh
#
# explicit addition of pip is only necessary for python2.X
#
# python2.7 has ensurepip, but unlike py3 it's not run by default
#
${THOME}/build/unpack pip-19.2.2
cd pip-19.2.2
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpip-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
