#!/bin/sh
#
# options mostly the same as OI
#
$THOME/build/dobuild -64only xterm-387 -C "--enable-256-color --enable-88-color --enable-wide-chars --disable-setuid --disable-setgid --enable-luit --disable-imake"
${THOME}/build/genpkg TRIBterminal-xterm xterm-387
