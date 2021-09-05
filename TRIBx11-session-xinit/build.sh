#!/bin/sh
#
${THOME}/build/dobuild xinit-1.4.1 -C "--sysconfdir=/etc --with-xinitdir=/etc/X11/xinit"
${THOME}/build/genpkg TRIBx11-session-xinit xinit-1.4.1
