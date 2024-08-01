#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# very much a manual build
#
${THOME}/build/unpack glew-2.1.0
cd glew-2.1.0
gmake SYSTEM=solaris-gcc LIBDIR=/usr/lib/`$THOME/build/getarch` PKGDIR=/usr/lib/`$THOME/build/getarch`/pkgconfig INSTALL=ginstall CFLAGS.EXTRA="-fPIC -m64" LDFLAGS.EXTRA="-m64"
gmake SYSTEM=solaris-gcc LIBDIR=/usr/lib/`$THOME/build/getarch` PKGDIR=/usr/lib/`$THOME/build/getarch`/pkgconfig INSTALL=ginstall CFLAGS.EXTRA="-fPIC -m64" LDFLAGS.EXTRA="-m64" install DESTDIR=/tmp/gg145
cd ..
${THOME}/build/create_pkg TRIBglew /tmp/gg145
