#!/bin/sh
#
${THOME}/build/unpack Image-ExifTool-12.68
cd Image-ExifTool-12.68
perl Makefile.PL
make
${THOME}/build/genpkg TRIBexiftool
cd ..
