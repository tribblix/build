#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env TRIBBLIX_CFLAGS=-pthreads TRIBBLIX_CXXFLAGS=-pthreads ${THOME}/build/dobuild -64only librevenge-0.0.4 -C --disable-werror
${THOME}/build/genpkg TRIBlibrevenge librevenge-0.0.4
