#!/bin/sh
#
${THOME}/build/unpack Image-ExifTool-10.57
cd Image-ExifTool-10.57
perl Makefile.PL
make
${THOME}/build/genpkg TRIBexiftool
cd ..
