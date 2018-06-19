#!/bin/sh
#
# needs TRIBdev-xorg-macros in order to build
#
env CPPFLAGS="-D SUNSOFT -DMOTIFBC -DSUNSOFT_KBD" \
$THOME/build/dobuild -64 libX11-1.6.5 -C \
"--enable-xkb --enable-xthreads --enable-static=no --enable-xthread --enable-xf86bigfont --enable-xlocaledir --enable-loadable-i18n --without-xmlto --without-fop --localstatedir=/var --enable-loadable-xcursor"
${THOME}/build/genpkg TRIBx11-libx11 libX11-1.6.5
