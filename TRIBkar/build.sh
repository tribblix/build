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
mv /tmp/TRIBkar-i386.pkg ${THOME}/pkgs/TRIBkar.1.2.pkg
mv /tmp/TRIBkar-sparc.pkg ${THOME}/pkgs.sparc/TRIBkar.1.2.pkg
${THOME}/build/pkg2zap ${THOME}/pkgs/TRIBkar.1.2.pkg ${THOME}/pkgs
${THOME}/build/pkg2zap ${THOME}/pkgs.sparc/TRIBkar.1.2.pkg ${THOME}/pkgs.sparc
openssl md5 ${THOME}/pkgs/TRIBkar.1.2.zap | /usr/bin/awk '{print $NF}' > ${THOME}/pkgs/TRIBkar.1.2.zap.md5
openssl md5 ${THOME}/pkgs.sparc/TRIBkar.1.2.zap | /usr/bin/awk '{print $NF}' > ${THOME}/pkgs.sparc/TRIBkar.1.2.zap.md5
${THOME}/build/sign-file ${THOME}/pkgs/TRIBkar.1.2.zap
${THOME}/build/sign-file ${THOME}/pkgs.sparc/TRIBkar.1.2.zap
