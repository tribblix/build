#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# 4.5.0 revs the SONAME, so ship the 4.4.0 shared libraries
# until all consumers are rebuilt
#
# we disable webp as a nonstandard extensions
#
# freeglut must not be installed, there's no option
# to disable it in the build
#
${THOME}/build/dobuild -64 tiff-4.4.0 -C "--disable-webp --disable-cxx --disable-static --disable-docs --disable-libdeflate"
${THOME}/build/dobuild -64 tiff-4.7.1 -C "--disable-webp --disable-cxx --disable-static --disable-libdeflate"
${THOME}/build/genpkg TRIBimage-libtiff tiff-4.4.0 tiff-4.7.1
