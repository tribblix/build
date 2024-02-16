#!/bin/sh
#
${THOME}/build/unpack ptvtwm-1.0b2
${THOME}/build/unpack xli_1.17.0+20061110.orig
cd xli-2006-11-10
xmkmf -a
gmake CC=gcc CCOPTIONS= CDEBUGFLAGS=-O MAPFILES_FOR_ALL= MAPFILES_FOR_PROGS=
cd ..
cd ptvtwm-1.0b2
xmkmf -a
gmake CC=gcc CCOPTIONS= CDEBUGFLAGS=-O MAPFILES_FOR_ALL= MAPFILES_FOR_PROGS= XMULIB="-lXmu -lm"
rm -fr /tmp/t
gmake install install.man INSTALL=ginstall DESTDIR=/tmp/t CC=gcc CCOPTIONS= CDEBUGFLAGS=-O MAPFILES_FOR_ALL= MAPFILES_FOR_PROGS= XMULIB="-lXmu -lm"
mkdir -p /tmp/t/usr/share/man/man1
mv /tmp/t/usr/man/man1/tvtwm.1x /tmp/t/usr/share/man/man1/tvtwm.1
rm -fr /tmp/t/usr/man
rm -f /tmp/t/usr/lib/X11/twm/system.twmrc
cp system.piewmrc /tmp/t/usr/lib/X11/twm/
cp ../xli-2006-11-10/xli /tmp/t/usr/lib/X11/twm/xloadimage
ln /tmp/t/usr/bin/tvtwm /tmp/t/usr/bin/piewm
ln /tmp/t/usr/share/man/man1/tvtwm.1 /tmp/t/usr/share/man/man1/piewm.1
${THOME}/build/create_pkg TRIBtvtwm /tmp/t
rm -fr /tmp/t
