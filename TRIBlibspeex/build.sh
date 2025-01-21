#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# you need a multi-stage build here
#
# if building from scratch, just build and package speex, then install it
# then build speexdsp and create a package with both, and install that
# then rebuild and package both
#
# if you already have a recent build, then you'll just need to build
# both, package and install, then repeat
#
${THOME}/build/dobuild -64only speex-1.2.1
${THOME}/build/dobuild -64only speexdsp-1.2.1
${THOME}/build/genpkg TRIBlibspeex speex-1.2.1 speexdsp-1.2.1
