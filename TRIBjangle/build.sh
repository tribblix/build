#!/bin/sh
#
# In jangle itself:
./build packages deps
#
# that creates a cross-platform package
#  *** make sure the pkg version matches that here ***
#
# then copy the packages
#
mv /tmp/TRIBjangle.pkg /tmp/TRIBjangle.0.15.pkg
${THOME}/build/pkg2zap /tmp/TRIBjangle.0.15.pkg ${THOME}/pkgs
openssl md5 ${THOME}/pkgs/TRIBjangle.0.15.zap | /usr/bin/awk '{print $NF}' > ${THOME}/pkgs/TRIBjangle.0.15.zap.md5
${THOME}/build/sign-file ${THOME}/pkgs/TRIBjangle.0.15.zap
ln ${THOME}/pkgs/TRIBjangle.0.15.zap* ${THOME}/pkgs.sparc
