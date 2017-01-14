#!/bin/sh
#
# note that it looks like the VERSION has gone backwards, it hasn't
# the older 1.2.1 package was 1.2rc1
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
# if you have an older (1.2rc1) version installed, you need to uninstall
# it first
#
${THOME}/build/dobuild -64 speex-1.2.0
${THOME}/build/dobuild -64 speexdsp-1.2rc3
${THOME}/build/genpkg TRIBlibspeex speex-1.2.0 speexdsp-1.2rc3
