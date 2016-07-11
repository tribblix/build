#!/bin/sh
#
# (with bzip2, security fixes)
#
${THOME}/build/unpack unzip60
cd unzip60
${THOME}/build/unpack bzip2-1.0.6
mv bzip2-1.0.6/* bzip2
gmake -f unix/Makefile D_USE_BZ2=-DUSE_BZIP2 L_BZ2=-lbz2 generic_gcc
rm -fr /tmp/unzip
gmake -f unix/Makefile install prefix=/tmp/unzip/usr
${THOME}/build/create_pkg TRIBcompress-unzip /tmp/unzip
rm -fr /tmp/unzip
