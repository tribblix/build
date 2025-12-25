#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# needs libgmp
#
# we disable xpce, which drags in a lot of dependencies, but also doesn't
# have valid cmake
#
env TRIBBLIX_CFLAGS=-D_POSIX_PTHREAD_SEMANTICS $THOME/build/cmbuild -64only swipl-9.0.4 -C -DSWIPL_PACKAGES_X=OFF
${THOME}/build/genpkg TRIBswi-prolog swipl-9.0.4
