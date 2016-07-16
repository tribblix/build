#!/bin/sh
#
${THOME}/build/unpack chimera-2.0a19
cd chimera-2.0a19/
cp Common.tmpl.dist Common.tmpl
# edit Common.tmpl
# image/png.c: info->trans should be info->trans_alpha
#        info->trans_values should be info->trans_color
#        png_read_destroy etc fixes
gmake CCOPTIONS= MAPFILES_FOR_PROGS=
gmake install install.man DESTDIR=/tmp/c INSTALL=ginstall
mkdir -p /tmp/c/usr/share/man/man1
mv /tmp/c/usr/share/man/chimera.1x /tmp/c/usr/share/man/man1/chimera.1
${THOME}/build/create_pkg TRIBchimera /tmp/c
rm -fr /tmp/c
