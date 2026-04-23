#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# sparc downrev as we need a newer gcc
#
# 3.2 bumped the SONAME
#
# note that we need to package a full copy of Imath, as the cmake and
# pkgconfig files reference it, and if you don't then you can't build
# anything against it
#
${THOME}/build/cmbuild -64only Imath-3.2.2 -C "-DCMAKE_PREFIX_PATH=/usr/lib/`${THOME}/build/getarch`/cmake"
${THOME}/build/cmbuild -64only openexr-3.4.10 -C "-DCMAKE_PREFIX_PATH=/usr/lib/`${THOME}/build/getarch`/cmake"
${THOME}/build/genpkg TRIBopenexr Imath-3.2.2 openexr-3.4.10
