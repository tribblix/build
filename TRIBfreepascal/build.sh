#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# to bootstrap the build, first install the binary download
# (fpc-3.2.2.sparc-solaris.tar or fpc-3.2.2.x86_64-solaris.tar)
# into /tmp/f and add a couple of symlinks
#  ln -s /usr/gnu/bin/ld /tmp/f/bin/gld
#  ln -s /usr/gnu/bin/strip /tmp/f/bin/gstrip
# on sparc in addition
#  ln -s /usr/gnu/bin/as /tmp/f/bin/gas
#
# the fixit script will add the required symlinks to the installed version
#
${THOME}/build/unpack fpc-3.2.2.source
cd fpc-3.2.2
env PATH=/tmp/f/bin:/usr/gnu/bin:$PATH fpcmake Makefile.fpc
env PATH=/tmp/f/bin:/usr/gnu/bin:$PATH gmake all OVERRIDEVERSIONCHECK=1
env PATH=/tmp/f/bin:/usr/gnu/bin:$PATH gmake install PREFIX=/tmp/hhh/usr/versions/fpc
${THOME}/build/create_pkg TRIBfreepascal /tmp/hhh
rm -fr /tmp/hhh
