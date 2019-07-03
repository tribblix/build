#!/bin/sh
#
#
#
${THOME}/build/unpack Django-1.11.22
cd Django-1.11.22
rm -fr /tmp/p2a
python setup.py install --root=/tmp/p2a
${THOME}/build/create_pkg TRIBdjango-python-27 /tmp/p2a
cd ..
rm -fr /tmp/p2a
