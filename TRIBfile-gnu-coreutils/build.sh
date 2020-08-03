#!/bin/sh
#
# we absolutely want a 64-bit date, and it's easier and smaller to
# make everything 64-bit
#
${THOME}/build/dobuild +64only -gnu coreutils-8.32 -P /usr/gnu -C "--without-gmp gl_cv_host_operating_system=illumos"
${THOME}/build/genpkg TRIBfile-gnu-coreutils coreutils-8.32
