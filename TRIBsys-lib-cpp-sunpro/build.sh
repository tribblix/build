#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# separate package for as (as illumos now supplies make)
# Save the old binaries like so
# (cd / ; tar cf ${THOME}/build/patches/binary-libC-files.tar -I ${THOME}/build/patches/binary-libC-files.txt)
# or for sparc
# (cd / ; tar cf ${THOME}/build/patches/binary-libC-files.sparc.tar -I ${THOME}/build/patches/binary-libC-files.sparc.txt)
#
${THOME}/build/genpkg TRIBsys-lib-cpp-sunpro
