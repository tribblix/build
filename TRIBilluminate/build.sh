#!/bin/sh
#
# In illuminate itself:
./build packages deps
#
# that creates sparc and x86 packages, so we have to handle both,
# which means the manual shenanigans below
#  *** make sure the pkg version matches that here ***
#
# then copy the packages
#
mv /tmp/TRIBilluminate-i386.pkg ${THOME}/pkgs/TRIBilluminate.0.6.pkg
mv /tmp/TRIBilluminate-sparc.pkg ${THOME}/pkgs.sparc/TRIBilluminate.0.6.pkg
${THOME}/build/pkg2zap ${THOME}/pkgs/TRIBilluminate.0.6.pkg ${THOME}/pkgs
${THOME}/build/pkg2zap ${THOME}/pkgs.sparc/TRIBilluminate.0.6.pkg ${THOME}/pkgs.sparc
openssl md5 ${THOME}/pkgs/TRIBilluminate.0.6.zap | /usr/bin/awk '{print $NF}' > ${THOME}/pkgs/TRIBilluminate.0.6.zap.md5
openssl md5 ${THOME}/pkgs.sparc/TRIBilluminate.0.6.zap | /usr/bin/awk '{print $NF}' > ${THOME}/pkgs.sparc/TRIBilluminate.0.6.zap.md5
${THOME}/build/sign-file ${THOME}/pkgs/TRIBilluminate.0.6.zap
${THOME}/build/sign-file ${THOME}/pkgs.sparc/TRIBilluminate.0.6.zap
