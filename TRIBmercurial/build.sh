#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
zap install TRIBdocutils-python-312
${THOME}/build/unpack mercurial-6.8.1
cd mercurial-6.8.1
sed -i 's:install -d:ginstall -d:' Makefile
sed -i 's:install -m:ginstall -m:' Makefile
sed -i 's:install -m:ginstall -m:' doc/Makefile
gmake PREFIX=/usr PYTHON=python3.12 all
rm -fr /tmp/hg1
gmake PREFIX=/usr PYTHON=python3.12 DESTDIR=/tmp/hg1 install
${THOME}/build/create_pkg TRIBmercurial /tmp/hg1
cd ..
rm -fr /tmp/hg1
