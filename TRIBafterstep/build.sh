#!/bin/sh
#
# [the original tarball is named AfterStep, rename it]
#
# there are a couple of patches via debian needed for current gcc
#
${THOME}/build/dobuild -64only afterstep-devel-2.2.12 -C "--enable-staticlibs=no --enable-sharedlibs" -L
env PATH=/usr/xpg4/bin:$PATH ${THOME}/build/genpkg TRIBafterstep afterstep-devel-2.2.12
