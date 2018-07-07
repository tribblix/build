#!/bin/sh
#
${THOME}/build/dobuild -64 -gnu coreutils-8.30 -P /usr/gnu -C "--without-gmp gl_cv_host_operating_system=illumos"
${THOME}/build/genpkg TRIBfile-gnu-coreutils coreutils-8.30
