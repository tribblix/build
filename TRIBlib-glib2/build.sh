#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# versions after 2.64.6 broke Xfce with /usr/libexec/at-spi-bus-launcher
# reporting "Failed to launch bus: Failed to connect to session bus"
# which is solved by adding -D_REENTRANT to CFLAGS
#

#
# our libelf doesn't have large-file support in 32-bit mode
# need docutils to be in the default path to find rst2man
#
env TRIBBLIX_LDFLAGS="-lsocket" TRIBBLIX_CFLAGS="-Wno-error=format -Wno-error=format-nonliteral -D_POSIX_PTHREAD_SEMANTICS -D_REENTRANT" $THOME/build/mesonbuild +gnu -64 glib-2.82.5 -C "-Dxattr=false -Dman-pages=enabled -Ddtrace=false -Dsysprof=disabled -Dlibelf=disabled -Dtests=false -Dintrospection=disabled" +C "-Dxattr=false -Dman-pages=enabled -Ddtrace=false -Dsysprof=disabled -Dtests=false -Dintrospection=disabled"

$THOME/build/genpkg TRIBlib-glib2 glib-2.82.5
