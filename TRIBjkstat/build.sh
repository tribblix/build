#!/bin/sh
#
# In jkstat itself:
./build packages deps
#
# that creates sparc and x86 packages
#  *** make sure the pkg version matches that here ***
#
# then copy the packages
#
mv /tmp/TRIBjkstat-i386.pkg ${THOME}/pkgs/TRIBjkstat.1.6.0.pkg
mv /tmp/TRIBjkstat-sparc.pkg ${THOME}/pkgs.sparc/TRIBjkstat.1.6.0.pkg
${THOME}/build/pkg2zap ${THOME}/pkgs/TRIBjkstat.1.6.0.pkg ${THOME}/pkgs
${THOME}/build/pkg2zap ${THOME}/pkgs.sparc/TRIBjkstat.1.6.0.pkg ${THOME}/pkgs.sparc
