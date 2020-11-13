#!/bin/sh
#
#
#
zap install TRIBdocutils-python-37
${THOME}/build/unpack mercurial-5.6
cd mercurial-5.6
sed -i 's:install -d:ginstall -d:' Makefile
sed -i 's:install -m:ginstall -m:' Makefile
sed -i 's:install -m:ginstall -m:' doc/Makefile
gmake PREFIX=/usr PYTHON=python3 all
rm -fr /tmp/hg1
gmake PREFIX=/usr PYTHON=python3 DESTDIR=/tmp/hg1 install
${THOME}/build/create_pkg TRIBmercurial /tmp/hg1
cd ..
rm -fr /tmp/hg1
