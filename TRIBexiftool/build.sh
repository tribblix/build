#!/bin/sh
#
${THOME}/build/unpack Image-ExifTool-10.13
cd Image-ExifTool-10.13
perl Makefile.PL
make
${THOME}/build/genpkg TRIBexiftool
