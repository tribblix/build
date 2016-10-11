#!/bin/sh
#
#
#
${THOME}/build/unpack Django-1.10.2
cd Django-1.10.2
rm -fr /tmp/p2a
python setup.py install --root=/tmp/p2a
${THOME}/build/create_pkg TRIBdjango-python-27 /tmp/p2a
rm -fr /tmp/p2a
