#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild +64only -gnu coreutils-9.9 -P /usr/gnu -C "--without-libgmp --without-openssl gl_cv_host_operating_system=illumos"
${THOME}/build/genpkg TRIBfile-gnu-coreutils coreutils-9.9
