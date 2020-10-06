#!/bin/sh
#
${THOME}/build/unpack Image-ExifTool-12.07
cd Image-ExifTool-12.07
perl Makefile.PL
make
${THOME}/build/genpkg TRIBexiftool
cd ..
