#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# it's not a normal configure, so have to pass flags
# directly as well to get 64-bit
#
env TRIBBLIX_CFLAGS=-m64 TRIBBLIX_LDFLAGS=-m64 ${THOME}/build/dobuild -64only fossil-src-2.27 -C --json
${THOME}/build/genpkg TRIBfossil fossil-src-2.27
