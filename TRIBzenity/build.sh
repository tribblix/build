#!/bin/sh
#
# zenity (gnome-doc-utils is a build dependency)
#
env PATH=/usr/gnu/bin:$PATH ${THOME}/build/dobuild zenity-2.32.1 -C --disable-scrollkeeper
${THOME}/build/genpkg TRIBzenity zenity-2.32.1
