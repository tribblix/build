#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# [the original tarball is named AfterStep, rename it]
#
# there are a couple of patches via debian needed for current gcc
#
${THOME}/build/dobuild -64only afterstep-devel-2.2.12 -C "--enable-staticlibs=no --enable-sharedlibs" -L
${THOME}/build/genpkg TRIBafterstep afterstep-devel-2.2.12
