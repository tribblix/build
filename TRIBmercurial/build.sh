#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#

#
# in the new scheme, we build hg as a normal python module, so that
# it shows up in the list of modules and can be used directly by
# other python modules
#
$THOME/build/pkg_setup_py -v 312 TRIBmercurial mercurial-6.9.1

#
# the old manual scheme installed hg separately
#
#zap install TRIBdocutils-python-312
#${THOME}/build/unpack mercurial-6.9.1
#cd mercurial-6.9.1
#sed -i 's:install -d:ginstall -d:' Makefile
#sed -i 's:install -m:ginstall -m:' Makefile
#sed -i 's:install -m:ginstall -m:' doc/Makefile
#gmake PREFIX=/usr PYTHON=python3.12 all
#rm -fr /tmp/hg1
#gmake PREFIX=/usr PYTHON=python3.12 DESTDIR=/tmp/hg1 install
#${THOME}/build/create_pkg TRIBmercurial /tmp/hg1
#cd ..
#rm -fr /tmp/hg1
