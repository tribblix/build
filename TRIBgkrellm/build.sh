#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack gkrellm-2.3.11
cd gkrellm-2.3.11
# CPPFLAGS, as CFLAGS is overridden by the Makefiles
env PATH=/usr/bin/`$THOME/build/getarch`:$PATH PKG_CONFIG_PATH=/usr/lib/`$THOME/build/getarch`/pkgconfig gmake -j 4 solaris LOCALEDIR=/usr/share/locale CPPFLAGS=-m64 LDFLAGS=-m64
rm -fr /tmp/gk
gmake install INSTALL=ginstall DESTDIR=/tmp/gk PREFIX=/usr PKGCONFIGDIR=/tmp/gk/usr/lib/`$THOME/build/getarch`/pkgconfig
${THOME}/build/create_pkg TRIBgkrellm /tmp/gk
rm -fr /tmp/gk
