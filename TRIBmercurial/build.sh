#!/bin/sh
#
#
#
zap install TRIBdocutils-python-27
${THOME}/build/unpack mercurial-4.3.1
cd mercurial-4.3.1
gmake all
rm -fr /tmp/hg1
python setup.py install --root=/tmp/hg1
${THOME}/build/create_pkg TRIBmercurial /tmp/hg1
cd ..
rm -fr /tmp/hg1
