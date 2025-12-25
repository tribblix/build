#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# BULLET3 is a GPU-only version, which wouldn't work for us in all
# likelihood, and the current consumer (enlightenment) doesn't need it
#
# it doesn't use the standard cmake mechanism for 64-bit locations
#
# the SONAME embeds major.minor, so upgrades need consumer rebuilds
#
$THOME/build/cmbuild +64 bullet3-2.83.7 +C "-D BUILD_BULLET2_DEMOS=OFF -D BUILD_EXTRAS=OFF -D BUILD_SHARED_LIBS=ON -D BUILD_BULLET3=OFF -D LIB_SUFFIX=/`$THOME/build/getarch`"
${THOME}/build/genpkg TRIBbullet bullet3-2.83.7
