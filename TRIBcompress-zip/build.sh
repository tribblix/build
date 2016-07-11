#!/bin/sh
#
${THOME}/build/unpack zip30
cd zip30
gmake -f unix/Makefile generic_gcc
rm -fr /tmp/zip
gmake -f unix/Makefile install prefix=/tmp/zip/usr
${THOME}/build/create_pkg TRIBcompress-zip /tmp/zip
rm -fr /tmp/zip
