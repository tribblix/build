#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# dependencies are optional, half come with perl itself
# Archive::Zip we already had, Compress::Raw:Lzma was easy
# others send you down the rabbit hole
#
${THOME}/build/unpack Image-ExifTool-12.93
cd Image-ExifTool-12.93
perl Makefile.PL
make
${THOME}/build/genpkg TRIBexiftool
cd ..
