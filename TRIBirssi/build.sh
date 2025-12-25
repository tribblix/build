#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env TRIBBLIX_CFLAGS=-I/usr/gnu/include/ncurses TRIBBLIX_LDFLAGS="-L/usr/gnu/lib/`$THOME/build/getarch` -R/usr/gnu/lib/`$THOME/build/getarch`" ${THOME}/build/dobuild -64only irssi-1.4.5 -C "--with-perl=yes --with-perl-lib=/usr/perl5/site_perl/5.34"
${THOME}/build/genpkg TRIBirssi irssi-1.4.5
