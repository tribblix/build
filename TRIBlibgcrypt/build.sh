#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# sparc just requires --disable-asm
#
# specify -O2 as the build tries to turn off optimization for jitterentropy.c
# and doesn't understand the simplest case of -O
#
env TRIBBLIX_CFLAGS=-O2 ${THOME}/build/dobuild -64only libgcrypt-1.10.3 -C "--disable-amd64-as-feature-detection gcry_cv_gcc_amd64_platform_as_ok=no --disable-asm"
${THOME}/build/genpkg TRIBlibgcrypt libgcrypt-1.10.3
