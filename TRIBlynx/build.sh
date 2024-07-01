#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# the curses logic is a bit convoluted and needs a little help
# otherwise you get missing symbol delete_screen
#
# don't have gnu iconv installed, as it will only be partially detected
# and won't link
#
env TRIBBLIX_LDFLAGS="-L/usr/gnu/lib/`$THOME/build/getarch` -R/usr/gnu/lib/`$THOME/build/getarch`" ${THOME}/build/dobuild -64only lynx2.9.2 -E /etc -C "--with-ssl --with-zlib --enable-gzip-help --enable-internal-links --enable-ipv6 --enable-local-docs --enable-nsl-fork --enable-underlines --with-screen=ncurses --with-curses-dir=/usr/gnu"
${THOME}/build/genpkg -I "install install-help" TRIBlynx lynx2.9.2
