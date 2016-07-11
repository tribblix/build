#!/bin/sh
#
#
#
${THOME}/build/unpack xephem-3.7.7
cd xephem-3.7.7/GUI/xephem
gsed -i 's:-lm:-lsocket -lnsl -lm:' Makefile
gmake CC=gcc MOTIFI=/usr/include MOTIFL=""
rm -fr /tmp/xep1
mkdir -p /tmp/xep1/usr/bin
mkdir -p /tmp/xep1/usr/share/xephem
mkdir -p /tmp/xep1/usr/share/man/man1
cp xephem /tmp/xep1/usr/bin
cp -R auxil catalogs fifos fits gallery help lo /tmp/xep1/usr/share/xephem
cp xephem.1 /tmp/xep1/usr/share/man/man1
${THOME}/build/create_pkg TRIBxephem /tmp/xep1
rm -fr /tmp/xep1
