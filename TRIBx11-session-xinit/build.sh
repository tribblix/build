#!/bin/sh
#
${THOME}/build/dobuild -64only xinit-1.4.2 -C "--sysconfdir=/etc --with-xinitdir=/etc/X11/xinit"
${THOME}/build/genpkg TRIBx11-session-xinit xinit-1.4.2
