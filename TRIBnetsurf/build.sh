#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#

#
# Note: If updating from 32-bit to 64-bit, you'll need to clear the cache
#   rm -fr ~/.cache/netsurf
# otherwise it won't work and you get an InitFailed error
#

$THOME/build/unpack netsurf-all-3.11
cd netsurf-all-3.11
#
# we need TRIBlib-perl-5-html-parser for utils/split-messages.pl
#
# no configure, just make, but a set of Makefiles that make
# a bunch of bad guesses
#
gmake -j 4 build CC="gcc -m64" BUILD=i386-pc-solaris2.11 PREFIX=/usr AR=ar INSTALL=ginstall BUILD_CC="gcc -m64" TARGET=gtk3
# passing INSTALL is ignored
rm -fr /tmp/nn311
env PATH=/usr/gnu/bin:$PATH gmake install CC="gcc -m64" BUILD=i386-pc-solaris2.11 PREFIX=/usr DESTDIR=/tmp/nn311 INSTALL=ginstall BUILD_CC="gcc -m64" TARGET=gtk3
mkdir -p /tmp/nn311/usr/share/man/man1
cp netsurf/docs/netsurf-gtk.1 /tmp/nn311/usr/share/man/man1
mkdir -p /tmp/nn311/usr/share/applications
cp netsurf/frontends/gtk/res/netsurf-gtk.desktop /tmp/nn311/usr/share/applications
$THOME/build/create_pkg TRIBnetsurf /tmp/nn311
rm -fr /tmp/nn311
