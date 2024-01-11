#!/bin/sh
#
# In kar itself:
./build packages deps
#
# that creates sparc and x86 packages
#  *** make sure the pkg version matches that here ***
#
# then copy the packages
#
mv /tmp/TRIBkar-i386.pkg ${THOME}/pkgs/TRIBkar.1.6.pkg
mv /tmp/TRIBkar-sparc.pkg ${THOME}/pkgs.sparc/TRIBkar.1.6.pkg
${THOME}/build/pkg2zap ${THOME}/pkgs/TRIBkar.1.6.pkg ${THOME}/pkgs
${THOME}/build/pkg2zap ${THOME}/pkgs.sparc/TRIBkar.1.6.pkg ${THOME}/pkgs.sparc
