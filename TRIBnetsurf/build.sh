#!/bin/sh
#
$THOME/build/unpack netsurf-all-3.10
cd netsurf-all-3.10
#
# we need TRIBlib-perl-5-html-parser for utils/split-messages.pl
#
# no configure, just make, but a set of Makefiles that make
# a bunch of bad guesses
#
gmake -j 4 build CC=gcc BUILD=i386-pc-solaris2.11 PREFIX=/usr AR=ar INSTALL=ginstall BUILD_CC=gcc TARGET=gtk3
# passing INSTALL is ignored
rm -fr /tmp/nn310
env PATH=/usr/gnu/bin:$PATH gmake install CC=gcc BUILD=i386-pc-solaris2.11 PREFIX=/usr DESTDIR=/tmp/nn310 INSTALL=ginstall BUILD_CC=gcc TARGET=gtk3
mkdir -p /tmp/nn310/usr/share/man/man1
cp netsurf/docs/netsurf-gtk.1 /tmp/nn310/usr/share/man/man1
mkdir -p /tmp/nn310/usr/share/applications
cp netsurf/frontends/gtk/res/netsurf-gtk.desktop /tmp/nn310/usr/share/applications
$THOME/build/create_pkg TRIBnetsurf /tmp/nn310
rm -fr /tmp/nn310
