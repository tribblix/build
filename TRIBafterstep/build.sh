#!/bin/sh
#
# [the original tarball is named AfterStep, rename it]
#
${THOME}/build/dobuild afterstep-devel-2.2.12 -C "--enable-staticlibs=no --enable-sharedlibs" -J 1
env PATH=/usr/xpg4/bin:$PATH ${THOME}/build/genpkg TRIBafterstep afterstep-devel-2.2.12
