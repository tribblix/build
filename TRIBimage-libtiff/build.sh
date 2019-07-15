#!/bin/sh
#
# this replaces the OI package
#
# see TRIBlibtiff-compat for the 3.x legacy files
#
# we disable webp and zstd as they are nonstandard extensions
#
${THOME}/build/dobuild -64 tiff-4.0.10 -C "--disable-webp --disable-zstd --disable-cxx --disable-static"
${THOME}/build/genpkg TRIBimage-libtiff tiff-4.0.10
