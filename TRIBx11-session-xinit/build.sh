#!/bin/sh
#
${THOME}/build/dobuild xinit-1.3.4 -C "--sysconfdir=/etc --with-xinitdir=/etc/X11/xinit"
${THOME}/build/genpkg TRIBx11-session-xinit xinit-1.3.4
