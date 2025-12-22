#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# options mostly the same as OI
#
# there's a postconf script for termios
#
$THOME/build/dobuild -64only xterm-406 -C "--enable-256-color --enable-88-color --enable-wide-chars --disable-setuid --disable-setgid --enable-luit --disable-imake"
${THOME}/build/genpkg TRIBterminal-xterm xterm-406
