#!/bin/sh
#
# zenity (patched to no longer require gnome-doc-utils)
#
env PATH=/usr/gnu/bin:$PATH ${THOME}/build/dobuild zenity-2.32.1 -C "--disable-scrollkeeper"
${THOME}/build/genpkg TRIBzenity zenity-2.32.1
