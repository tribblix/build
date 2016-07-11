#!/bin/sh
#
# zenity (gnome-doc-utils is a build dependency)
#
${THOME}/build/dobuild -gnu zenity-2.32.1 -C --disable-scrollkeeper
${THOME}/build/genpkg TRIBzenity zenity-2.32.1
