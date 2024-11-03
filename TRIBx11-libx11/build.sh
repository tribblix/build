#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# for historical reasons, and to maintain compatibility, we add most of
# the patches and additional features that Solaris did in the past
#
env CPPFLAGS="-D SUNSOFT -DMOTIFBC -DSUNSOFT_KBD" \
$THOME/build/dobuild -64 libX11-1.8.10 -C \
"--enable-xkb --enable-xthreads --enable-static=no --enable-xf86bigfont --enable-xlocaledir --enable-loadable-i18n --without-xmlto --without-fop --localstatedir=/var --enable-loadable-xcursor"
${THOME}/build/genpkg TRIBx11-libx11 libX11-1.8.10
