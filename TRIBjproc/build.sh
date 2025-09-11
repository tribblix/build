#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# In jproc itself:
./build packages deps
#
# that creates sparc and x86 packages
#  *** make sure the pkg version matches that here ***
#
# then copy the packages
#
mkdir -p /tmp/pct
mv /tmp/TRIBjproc-i386.pkg /tmp/pct/TRIBjproc.1.8.pkg
mv /tmp/TRIBjproc-sparc.pkg ${THOME}/pkgs.sparc/TRIBjproc.1.8.pkg
${THOME}/build/pkg2zap /tmp/pct/TRIBjproc.1.8.pkg /tmp/pct
${THOME}/build/pkg2zap ${THOME}/pkgs.sparc/TRIBjproc.1.8.pkg ${THOME}/pkgs.sparc
