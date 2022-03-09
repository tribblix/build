#!/bin/sh
#
# we need a copy of pkg5 for illumos-gate builds
# this puts together a minimal set that ought to work
#
# the dev in the package name and the lack of an alias
# is an extra hint that this package isn't for general use
#

#
# the build needs six and cffi and libzonecfg.h - see build_require
#
git clone https://github.com/omniosorg/pkg5
cd pkg5
cd src

#
# we have 64-bit python 3.9, not 3.10
#
sed -i s:3.10:3.9: Makefile.com
sed -i s:python3.10:python3.9: `grep -rl python3.10 .`
#
# use a regular gcc
# don't do the ctfconvert piece
#
# NB gmake doesn't work
#
sed -i s:gcc-11:gcc: Makefile.com
sed -i s:/opt/onbld/bin/i386/ctfconvert:true: Makefile.com
make install CC=gcc
cd ../proto/root_*

#
# I have no idea why this is required, but it doesn't work at all
#
sed -i 's:psinfo_size = 232:psinfo_size = 236:' usr/lib/python3.9/vendor-packages/pkg/misc.py

#
# we don't need anything to do with running a pkg server or any of the
# zone stuff
#
rm -fr etc lib var
rm -fr usr/include
rm -fr usr/lib/brand usr/lib/zones
rm usr/lib/pkg.*
mkdir -p usr/versions/python-3.9/lib
mv usr/lib/python3.9 usr/versions/python-3.9/lib
mv usr/versions/python-3.9/lib/python3.9/vendor-packages usr/versions/python-3.9/lib/python3.9/site-packages
rm -fr usr/share/lib/pkg/web
rm -f usr/share/lib/pkg/rad-invoke
rm -fr usr/share/man/ja_JP.UTF-8 usr/share/man/zh_CN.UTF-8
rm -fr usr/share/man/man1m

${THOME}/build/create_pkg TRIBdev-pkg5 `pwd`
