#!/bin/sh
#
# this replaces the OI package
#
# see TRIBlibtiff-compat for the 3.x legacy files
#
${THOME}/build/dobuild -64 tiff-4.0.9 -C "--disable-cxx --disable-static"
${THOME}/build/genpkg TRIBimage-libtiff tiff-4.0.9
