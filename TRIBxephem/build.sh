#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack XEphem-4.1.0
cd XEphem-4.1.0/GUI/xephem
gsed -i 's:-lm:-lsocket -lnsl -lm:' Makefile
gmake CC="gcc -m64" MOTIFI=/usr/include MOTIFL=""
rm -fr /tmp/xep1
mkdir -p /tmp/xep1/usr/bin
mkdir -p /tmp/xep1/usr/share/xephem
mkdir -p /tmp/xep1/usr/share/man/man1
cp xephem /tmp/xep1/usr/bin
cp -R auxil catalogs fifos fits gallery help lo /tmp/xep1/usr/share/xephem
cp xephem.man /tmp/xep1/usr/share/man/man1/xephem.1
${THOME}/build/create_pkg TRIBxephem /tmp/xep1
rm -fr /tmp/xep1
