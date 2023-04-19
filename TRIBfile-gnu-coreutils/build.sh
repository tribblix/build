#!/bin/sh
#
${THOME}/build/dobuild +64only -gnu coreutils-9.3 -P /usr/gnu -C "--without-libgmp gl_cv_host_operating_system=illumos"
${THOME}/build/genpkg TRIBfile-gnu-coreutils coreutils-9.3
