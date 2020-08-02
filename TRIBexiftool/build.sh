#!/bin/sh
#
${THOME}/build/unpack Image-ExifTool-12.03
cd Image-ExifTool-12.03
perl Makefile.PL
make
${THOME}/build/genpkg TRIBexiftool
cd ..
