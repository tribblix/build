#!/bin/sh
#
# options mostly the same as OI
#
$THOME/build/dobuild xterm-330 -C "--enable-256-color --enable-88-color --enable-wide-chars --disable-setuid --disable-setgid --enable-luit --disable-imake"
${THOME}/build/genpkg TRIBterminal-xterm xterm-330
