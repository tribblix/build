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
mv /tmp/TRIBjproc-i386.pkg ${THOME}/pkgs/TRIBjproc.1.3.pkg
mv /tmp/TRIBjproc-sparc.pkg ${THOME}/pkgs.sparc/TRIBjproc.1.3.pkg
${THOME}/build/pkg2zap ${THOME}/pkgs/TRIBjproc.1.3.pkg ${THOME}/pkgs
${THOME}/build/pkg2zap ${THOME}/pkgs.sparc/TRIBjproc.1.3.pkg ${THOME}/pkgs.sparc
openssl md5 ${THOME}/pkgs/TRIBjproc.1.3.zap | /usr/bin/awk '{print $NF}' > ${THOME}/pkgs/TRIBjproc.1.3.zap.md5
openssl md5 ${THOME}/pkgs.sparc/TRIBjproc.1.3.zap | /usr/bin/awk '{print $NF}' > ${THOME}/pkgs.sparc/TRIBjproc.1.3.zap.md5
${THOME}/build/sign-file ${THOME}/pkgs/TRIBjproc.1.3.zap
${THOME}/build/sign-file ${THOME}/pkgs.sparc/TRIBjproc.1.3.zap
