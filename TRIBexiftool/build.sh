#!/bin/sh
#
${THOME}/build/unpack Image-ExifTool-12.42
cd Image-ExifTool-12.42
perl Makefile.PL
make
${THOME}/build/genpkg TRIBexiftool
cd ..
