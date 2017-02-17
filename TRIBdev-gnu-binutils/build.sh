#!/bin/sh
#
# we use the same version and patches as OI
#
${THOME}/build/unpack binutils-2.25.1
cd binutils-2.25.1
env PATH=/usr/gnu/bin:$PATH CFLAGS="-O" bash ./configure --prefix=/usr/gnu --enable-64-bit-bfd --enable-gold=no --enable-plugins=no --enable-nls --enable-largefile=yes
env PATH=/usr/gnu/bin:$PATH gmake -j
cd ..
env PATH=/usr/gnu/bin:$PATH ${THOME}/build/genpkg TRIBdev-gnu-binutils binutils-2.25.1
