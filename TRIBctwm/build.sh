#!/bin/sh
#
${THOME}/build/unpack ctwm-3.8.2
cd ctwm-3.8.2
cat Imakefile.local-template | sed 's:#define GNOME:#undef GNOME:' > Imakefile.local
xmkmf -a
gsed -i s:/twm:/ctwm: Makefile
gmake CC=gcc CDEBUGFLAGS=-O MAPFILES_FOR_ALL= MAPFILES_FOR_PROGS=
rm -fr /tmp/c
gmake install install.man INSTALL=ginstall DESTDIR=/tmp/c
mv /tmp/c/usr/share/man/man1/ctwm.1x /tmp/c/usr/share/man/man1/ctwm.1
${THOME}/build/create_pkg TRIBctwm /tmp/c
rm -fr /tmp/c
