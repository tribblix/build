#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# see TRIBlibtiff-compat for the 3.x legacy files
#
# stick at 4.4.0; 4.5.0 revs the SONAME
#
# we disable webp as a nonstandard extensions
#
# freeglut must not be installed, there's no option
# to disable it in the build
#
${THOME}/build/dobuild -64 tiff-4.4.0 -C "--disable-webp --disable-cxx --disable-static"
${THOME}/build/genpkg TRIBimage-libtiff tiff-4.4.0
