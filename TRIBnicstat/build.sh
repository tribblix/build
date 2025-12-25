#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env CC="gcc -m64" ${THOME}/build/dobuild nicstat-master
rm -fr /tmp/nii
mkdir -p /tmp/nii/usr/bin
mkdir -p /tmp/nii/usr/share/man/man1
cd nicstat-master
cp `./nicstat.sh --bin-name` /tmp/nii/usr/bin/nicstat
cp nicstat.1 /tmp/nii/usr/share/man/man1
cd ..
${THOME}/build/create_pkg TRIBnicstat /tmp/nii
rm -fr /tmp/nii
