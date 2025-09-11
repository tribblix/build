#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# In jkstat itself:
./build packages deps
#
# that creates sparc and x86 packages
#  *** make sure the pkg version matches that here ***
#
# then copy the packages
#
mkdir -p /tmp/pct
mv /tmp/TRIBjkstat-i386.pkg /tmp/pct/TRIBjkstat.1.9.0.pkg
mv /tmp/TRIBjkstat-sparc.pkg ${THOME}/pkgs.sparc/TRIBjkstat.1.9.0.pkg
${THOME}/build/pkg2zap /tmp/pct/TRIBjkstat.1.9.0.pkg /tmp/pct
${THOME}/build/pkg2zap ${THOME}/pkgs.sparc/TRIBjkstat.1.9.0.pkg ${THOME}/pkgs.sparc
