#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# you may have to repackage the tarball to get the correct directory name in it
# there's a preconf script to change the PREFIX
#
env LDLIBS=-m64 CPPFLAGS=-m64 ${THOME}/build/dobuild nsxiv-31 -M "CC=gcc HAVE_INOTIFY=0"
cd nsxiv-31
rm -fr /tmp/nlr
env LDLIBS=-m64 CPPFLAGS=-m64 gmake install-all DESTDIR=/tmp/nlr CC=gcc HAVE_INOTIFY=0
cd ..
${THOME}/build/create_pkg TRIBnsxiv /tmp/nlr
rm -fr /tmp/nlr
