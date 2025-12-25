#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# separate package for sccs (as illumos now supplies make)
# Save the old binaries like so
# (cd / ; tar cf ${THOME}/build/patches/binary-sccs-files.tar -I ${THOME}/build/patches/binary-sccs-files.txt)
# or for sparc
# (cd / ; tar cf ${THOME}/build/patches/binary-sccs-files.sparc.tar -I ${THOME}/build/patches/binary-sccs-files.sparc.txt)
#
rm -fr /tmp/as1 ; mkdir /tmp/as1
${THOME}/build/create_pkg TRIBdev-build-sccs /tmp/as1
rm -fr /tmp/as1
