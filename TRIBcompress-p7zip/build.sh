#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# replaces the old p7zip, but keep the package and command names
# for compatibility
#
$THOME/build/unpack -N 7z2500-src
cd 7z2500-src/CPP/7zip/Bundles/Alone2
gmake -j8 -f ../../cmpl_gcc.mak CC=gcc CXX=g++ LOCAL_FLAGS_SYS=-m64 LDFLAGS=-m64 LIB2=
#
# see fixit and fixinstall for the actual installation
#
${THOME}/build/genpkg TRIBcompress-p7zip
