#!/bin/sh
#
${THOME}/build/unpack Image-ExifTool-10.65
cd Image-ExifTool-10.65
perl Makefile.PL
make
${THOME}/build/genpkg TRIBexiftool
cd ..
