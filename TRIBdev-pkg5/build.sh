#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# we need a copy of pkg5 for illumos-gate builds
# this puts together a minimal set that ought to work
#
# the dev in the package name and the lack of an alias
# is an extra hint that this package isn't for general use
#

#
# if rebuilding against a newer openssl, you need to make sure that
# any wheels from a previous build that might reference the older
# ssl are removed - eg
# find ~/.cache/pip/ | grep -i curl
#

#
# the build needs six cffi jsonrpclib and libzonecfg.h - see build_require
#
git clone https://github.com/omniosorg/pkg5
cd pkg5
# this one works, newer ones seen to fail building pydantic
# with rust errors
#
# this was the python3.11 checkout
#
#git checkout b73cf9dac236c95dcf1b62b9966606183c2ad2ca
#
# and this is the one used for python 3.12 on m35
#
git checkout 145220ee6ceb537305371f55d6b50328f2e0f113
cd src

#
# we have 64-bit python 3.12, which may not be the default in the source
#
#sed -i s:3.11:3.12: Makefile.com
#sed -i s:python3.11:python3.12: `grep -rl python3.11 .`

#
# use a regular gcc
#
sed -i s:gcc-13:gcc: Makefile.com
#
# don't do the ctfconvert piece
#
sed -i s:/opt/onbld/bin/i386/ctfconvert:true: Makefile.com
#
# align the PYTHONPATH with Tribblix so it can find modules
#
sed -i 's=:/usr/lib/python$PYVER/vendor-packages=:/usr/versions/python-3.12/lib/python3.12/site-packages=' ../tools/installmodules
#
# pkg has an odd way of fiddling the module path instead of using
# the normal vendoring mechanism
#
sed -i '/strip_site()$/d' modules/site_paths/__init__.py
sed -i '/sys.path,/d' modules/site_paths/__init__.py
sed -i '/sys.path.extend/d' modules/site_paths/__init__.py
#
# this really doesn't work
#
sed -i 's:-L/lib ::' brand/ipkg/Makefile
#
# NB gmake doesn't work
#
make install CC=gcc
cd ../proto/root_*

#
# I have no idea why this is required, but it doesn't work at all
#
sed -i 's:psinfo_size = 232:psinfo_size = 236:' usr/lib/python3.12/vendor-packages/pkg/misc.py

#
# we don't need anything to do with running a pkg server or any of the
# zone stuff
#
rm -fr etc lib var
rm -fr usr/include
rm -fr usr/lib/brand usr/lib/zones
rm usr/lib/pkg.*
mkdir -p usr/versions/python-3.12/lib
mv usr/lib/python3.12 usr/versions/python-3.12/lib
mv usr/versions/python-3.12/lib/python3.12/vendor-packages usr/versions/python-3.12/lib/python3.12/site-packages
rm -fr usr/share/lib/pkg/web
rm -f usr/share/lib/pkg/rad-invoke
rm -fr usr/share/man/ja_JP.UTF-8 usr/share/man/zh_CN.UTF-8
rm -fr usr/share/man/man1m
rm -fr usr/share/man/man8
#
# remove the brand man pages
#
mv usr/share/man/man7/pkg.7 usr/share/man/man7/pkg.keep
rm -fr usr/share/man/man7/*.7
mv usr/share/man/man7/pkg.keep usr/share/man/man7/pkg.7
#
# spaces...
#
mv 'usr/lib/pkg/python3.12/jaraco/text/Lorem ipsum.txt' 'usr/lib/pkg/python3.12/jaraco/text/Lorem_ipsum.txt'

${THOME}/build/create_pkg TRIBdev-pkg5 `pwd`
