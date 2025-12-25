#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# 2.3.5 and earlier failed with parallel make and needed -J 1
#
# force posix readdir_r, required as that's the only readdir_r
# available in the LP64 environment
#
# there's an extra patch needed for --disable-printing to work, but
# that removes the deprecated libXp dependency
#
env TRIBBLIX_CFLAGS=-D_POSIX_PTHREAD_SEMANTICS ${THOME}/build/dobuild -64 motif-2.3.8 -L -C "--disable-printing --enable-jpeg --enable-png --enable-xft --enable-shared --disable-static"
${THOME}/build/genpkg TRIBmotif motif-2.3.8
