#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env TRIBBLIX_LDFLAGS="-L/usr/lib/mesa -R/usr/lib/mesa" ${THOME}/build/dobuild -64 SDL-release-2.26.5 -C "--disable-static SORT=/usr/gnu/bin/sort"
${THOME}/build/genpkg TRIBlibsdl2 SDL-release-2.26.5
