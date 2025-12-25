#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# we use the same version and patches as OI
#
# need --enable-warn-rwx-segments=no otherwise the gate build fails as
# program header data segments are RWX on illumos for at least 32-bit
#
${THOME}/build/unpack binutils-2.39
cd binutils-2.39
env PATH=/usr/gnu/bin:$PATH CFLAGS="-O" bash ./configure --prefix=/usr/gnu --enable-64-bit-bfd --enable-gold=no --enable-plugins=no --enable-nls --enable-largefile=yes --with-system-zlib --enable-warn-rwx-segments=no
env PATH=/usr/gnu/bin:$PATH gmake -j
cd ..
${THOME}/build/genpkg -gnu TRIBdev-gnu-binutils binutils-2.39
