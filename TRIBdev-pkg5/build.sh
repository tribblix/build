#!/bin/sh
#
# we need a copy of pkg5 for illumos-gate builds
# this puts together a minimal set that ought to work
#
# the dev in the package name and the lack of an alias
# is an extra hint that this package isn't for general use
#

#
# the build needs six and cffi and libzonecfg.h - see build_requires
#
git clone https://github.com/omniosorg/pkg5
cd pkg5
cd src

#
# we have a 32-bit python 3.7, not a 64-bit python 3.9
#
sed -i 's:build_64 = True:build_64 = False:' setup.py
sed -i s:3.9:3.7: Makefile
sed -i s:python3.9:python3.7: `grep -rl python3.9 .`
#
# use a regular gcc, rather than the mix of plain gcc
# and illumos gcc specified in the Makefile
#
# we just want one version, so go for python2 for now
# we don't have python3.5 at all, and 3.5 is coded in
# several places - note that "true" here means that it
# it will use "true" as the python command, which exits
# successfully having done nothing, rather than that
# building python35 is true!
#
# NB gmake doesn't work
#
make install CC=gcc PYTHON35=true
cd ../proto/root_*

#
# I have no idea why this is required, but it doesn't work at all
#
sed -i 's:psinfo_size = 232:psinfo_size = 236:' usr/lib/python3.7/vendor-packages/pkg/misc.py

#
# we don't need anything to do with running a pkg server or any of the
# zone stuff
#
rm -fr etc lib var
rm -fr usr/include
rm -fr usr/lib/brand usr/lib/zones
rm usr/lib/pkg.*
mkdir -p usr/versions/python-3.7/lib
mv usr/lib/python3.7 usr/versions/python-3.7/lib
mv usr/versions/python-3.7/lib/python3.7/vendor-packages usr/versions/python-3.7/lib/python3.7/site-packages
rm -fr usr/share/lib/pkg/web
rm usr/share/lib/pkg/rad-invoke
rm -fr usr/share/man/ja_JP.UTF-8 usr/share/man/zh_CN.UTF-8
rm -fr usr/share/man/man1m

${THOME}/build/create_pkg TRIBdev-pkg5 `pwd`
