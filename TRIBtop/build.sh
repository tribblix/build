#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# NOTE: top used to be built with Studio; building with gcc resulted in a huge
# memory leak. That appears to no longer be the case.
#
# the build here is rather manual as top has its own ideas on how to
# create a dual 32+64 bit build, which we no longer use anyway
#
${THOME}/build/unpack top-3.8beta1
cd top-3.8beta1
${THOME}/build/patches/top-3.8beta1.preconf
./configure --prefix=/usr
${THOME}/build/patches/top-3.8beta1.postconf
gmake -j 8
cd ..
${THOME}/build/genpkg TRIBtop top-3.8beta1
