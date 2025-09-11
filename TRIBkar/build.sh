#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# In kar itself:
./build packages deps
#
# that creates sparc and x86 packages
#  *** make sure the pkg version matches that here ***
#
# then copy the packages
#
mkdir -p /tmp/pct
mv /tmp/TRIBkar-i386.pkg /tmp/pct/TRIBkar.1.10.pkg
mv /tmp/TRIBkar-sparc.pkg ${THOME}/pkgs.sparc/TRIBkar.1.10.pkg
${THOME}/build/pkg2zap /tmp/pct/TRIBkar.1.10.pkg /tmp/pct
${THOME}/build/pkg2zap ${THOME}/pkgs.sparc/TRIBkar.1.10.pkg ${THOME}/pkgs.sparc
