#!/bin/sh
#
# htop support for solaris/illumos is experimental
#
# Thanks to Guy M Broome <gmbroome@vcu.edu> 
#
# the build here is rather manual
#
# requires ncurses 6
#
$THOME/build/dobuild htop-2.2.0 -C --disable-unicode
mv htop-2.2.0 htop-2.2.0-32
#
# 64-bit path to pick up 64-bit ncurses-config
#
env PATH=/usr/gnu/bin/`isainfo -k`:$PATH $THOME/build/dobuild +64 htop-2.2.0 -C --disable-unicode
mv htop-2.2.0-32 htop-2.2.0

${THOME}/build/genpkg TRIBhtop htop-2.2.0
