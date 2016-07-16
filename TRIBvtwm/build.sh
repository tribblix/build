#!/bin/sh
#
${THOME}/build/unpack vtwm-5.4.7
cd vtwm-5.4.7
gsed -i 's:SOUNDLIB :XCOMM SOUNDLIB :' Imakefile
gsed -i 's:SOUNDINC :XCOMM SOUNDINC :' Imakefile
gsed -i 's:XCOMM NO_SOUND:NO_SOUND:' Imakefile
xmkmf -a
gmake CC=gcc CCOPTIONS= CDEBUGFLAGS=-O MAPFILES_FOR_ALL= MAPFILES_FOR_PROGS=
rm -fr /tmp/v
gmake install install.man CC=gcc CCOPTIONS= CDEBUGFLAGS=-O MAPFILES_FOR_ALL= MAPFILES_FOR_PROGS= INSTALL=ginstall DESTDIR=/tmp/v
mkdir -p /tmp/v/usr/share/man/man1
mv /tmp/v/usr/man/man1/vtwm.1x /tmp/v/usr/share/man/man1/vtwm.1
rm -fr /tmp/v/usr/man
${THOME}/build/create_pkg TRIBvtwm /tmp/v
rm -fr /tmp/v
