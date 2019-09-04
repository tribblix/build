#!/bin/sh
#
#
#
${THOME}/build/unpack Django-1.11.24
cd Django-1.11.24
rm -fr /tmp/p2a
python setup.py install --root=/tmp/p2a
${THOME}/build/create_pkg TRIBdjango-python-27 /tmp/p2a
cd ..
rm -fr /tmp/p2a
