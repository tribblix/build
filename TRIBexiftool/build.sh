#!/bin/sh
#
${THOME}/build/unpack Image-ExifTool-10.53
cd Image-ExifTool-10.53
perl Makefile.PL
make
${THOME}/build/genpkg TRIBexiftool
cd ..
