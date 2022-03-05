#!/bin/sh
#
# it's not a normal configure, so have to pass flags
# directly to get 64-bit
#
env TRIBBLIX_CFLAGS=-m64 TRIBBLIX_LDFLAGS=-m64 ${THOME}/build/dobuild fossil-src-2.18 -C --json
${THOME}/build/genpkg TRIBfossil fossil-src-2.18
