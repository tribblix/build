#!/bin/sh
#
# this is the old compatibility build; we install the things we don't want to
# keep into known locations and the fixit script knows to clean them up
#
${THOME}/build/dobuild -64 jasper-1.900.1 -C "--enable-shared --disable-static --disable-opengl --program-suffix=.19001 --includedir=/usr/include.19001 --mandir=/usr/man.19001"
#
# this is the new build; disable opengl to keep the dependency tree
# tight; ditto heif which is marked experimental
#
$THOME/build/cmbuild -64 jasper-4.1.0 -C "-DJAS_ENABLE_OPENGL=OFF -DJAS_ENABLE_LIBHEIF=OFF"
${THOME}/build/genpkg TRIBgraphics-jasper jasper-1.900.1 jasper-4.1.0
