#!/bin/sh
#
${THOME}/build/unpack Image-ExifTool-12.40
cd Image-ExifTool-12.40
perl Makefile.PL
make
${THOME}/build/genpkg TRIBexiftool
cd ..
