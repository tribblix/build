#!/bin/sh
#
# In solview itself:
./build packages deps
#
# that creates sparc and x86 packages
#  *** make sure the pkg version matches that here ***
#
# then copy the packages
#
mv /tmp/TRIBsolview-i386.pkg ${THOME}/pkgs/TRIBsolview.1.2.pkg
mv /tmp/TRIBsolview-sparc.pkg ${THOME}/pkgs.sparc/TRIBsolview.1.2.pkg
${THOME}/build/pkg2zap ${THOME}/pkgs/TRIBsolview.1.2.pkg ${THOME}/pkgs
${THOME}/build/pkg2zap ${THOME}/pkgs.sparc/TRIBsolview.1.2.pkg ${THOME}/pkgs.sparc
openssl md5 ${THOME}/pkgs/TRIBsolview.1.2.zap | /usr/bin/awk '{print $NF}' > ${THOME}/pkgs/TRIBsolview.1.2.zap.md5
openssl md5 ${THOME}/pkgs.sparc/TRIBsolview.1.2.zap | /usr/bin/awk '{print $NF}' > ${THOME}/pkgs.sparc/TRIBsolview.1.2.zap.md5
