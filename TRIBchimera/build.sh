#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack chimera-2.0a19
cd chimera-2.0a19
cp Common.tmpl.dist Common.tmpl
xmkmf
make Makefiles

gmake CCOPTIONS=-m64 MAPFILES_FOR_PROGS=
gmake install install.man DESTDIR=/tmp/c INSTALL=ginstall
mkdir -p /tmp/c/usr/share/man/man1
mv /tmp/c/usr/share/man/chimera.1x /tmp/c/usr/share/man/man1/chimera.1
${THOME}/build/create_pkg TRIBchimera /tmp/c
rm -fr /tmp/c

#
# explanation of patches:
#

# edit Common.tmpl
# sed -i s:/usr/local:/usr: Common.tmpl
# uncomment jpg and png
# .a -> .so

# Needed to fix image/png.c: info->trans should be info->trans_alpha
#        info->trans_values should be info->trans_color
#        png_read_destroy etc fixes
#
## png_read_init ---> png_create_read_struct
## png_write_init ---> png_create_write_struct
## png_info_init --> png_create_info_struct
## png_read_destroy --> png_destroy_read_struct, and &() or NULL for args
## png_write_destroy --> png_destroy_write_struct
#

#
# building in 64-bit fails with
# Error: Unknown endianism of architecture
# because it's only checking for i386, not amd64
#
