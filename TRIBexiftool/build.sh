#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# dependencies are optional, half come with perl itself
# Archive::Zip we already had, Compress::Raw:Lzma and POSIX::strptime were easy
# others send you down the rabbit hole
#
${THOME}/build/unpack Image-ExifTool-13.18
cd Image-ExifTool-13.18
perl Makefile.PL
make
${THOME}/build/genpkg TRIBexiftool
cd ..
