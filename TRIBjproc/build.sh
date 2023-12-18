#!/bin/sh
#
# In jproc itself:
./build packages deps
#
# that creates sparc and x86 packages
#  *** make sure the pkg version matches that here ***
#
# then copy the packages
#
mv /tmp/TRIBjproc-i386.pkg ${THOME}/pkgs/TRIBjproc.1.4.pkg
mv /tmp/TRIBjproc-sparc.pkg ${THOME}/pkgs.sparc/TRIBjproc.1.4.pkg
${THOME}/build/pkg2zap ${THOME}/pkgs/TRIBjproc.1.4.pkg ${THOME}/pkgs
${THOME}/build/pkg2zap ${THOME}/pkgs.sparc/TRIBjproc.1.4.pkg ${THOME}/pkgs.sparc
