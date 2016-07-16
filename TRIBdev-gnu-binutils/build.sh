#!/bin/sh
#
${THOME}/build/unpack binutils-2.23.2
cd binutils-2.23.2
env PATH=/usr/gnu/bin:$PATH CFLAGS="-O" bash ./configure --prefix=/usr/gnu
env PATH=/usr/gnu/bin:$PATH gmake -j 4
cd ..
env PATH=/usr/gnu/bin:$PATH ${THOME}/build/genpkg TRIBdev-gnu-binutils binutils-2.23.2
