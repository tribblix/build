#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# while we could replace --version-script= with -M to use symbol
# versioning, the mapfile isn't correct for us which fails the build
#
${THOME}/build/dobuild -64only libcdio-paranoia-10.2+2.0.1 -C --without-versioned-libs
${THOME}/build/genpkg TRIBlibcdio-paranoia libcdio-paranoia-10.2+2.0.1
