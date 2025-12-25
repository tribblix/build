#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack zip30
cd zip30
gmake -f unix/Makefile generic CC="gcc -m64"
rm -fr /tmp/zip
gmake -f unix/Makefile install prefix=/tmp/zip/usr
${THOME}/build/create_pkg TRIBcompress-zip /tmp/zip
rm -fr /tmp/zip
