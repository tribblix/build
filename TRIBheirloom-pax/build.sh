#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# pax from the Heirloom Project to replace the old closed-bin
#
${THOME}/build/unpack https://github.com/ptribble/heirloom
cd heirloom
# we just want pax out of cpio but need some extras as prerequisites
gmake SUBDIRS="build libcommon libuxre cpio"
rm -fr /tmp/hhp
mkdir -p /tmp/hhp/usr/bin
mkdir -p /tmp/hhp/usr/share/man/man1
cp cpio/pax /tmp/hhp/usr/bin
# slightly customised manpage
cp cpio/pax_illumos.1 /tmp/hhp/usr/share/man/man1/pax.1
${THOME}/build/create_pkg TRIBheirloom-pax /tmp/hhp
rm -fr /tmp/hhp
