#!/bin/sh
#
# 2.3.5 and earlier failed with parallel make and needed -J 1
#
# force posix readdir_r, required as that's the only readdir_r
# available in the LP64 environment
#
env TRIBBLIX_CFLAGS=-D_POSIX_PTHREAD_SEMANTICS ${THOME}/build/dobuild -64 motif-2.3.8 -L
${THOME}/build/genpkg TRIBmotif motif-2.3.8
