#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack Compress-Raw-Lzma-2.213
cd Compress-Raw-Lzma-2.213
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-comp-raw-lzma Compress-Raw-Lzma-2.213
