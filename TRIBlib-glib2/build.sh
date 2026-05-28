#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# versions after 2.64.6 broke Xfce with /usr/libexec/at-spi-bus-launcher
# reporting "Failed to launch bus: Failed to connect to session bus"
# which is solved by adding -D_REENTRANT to CFLAGS
#

#
# there's a deadly embrace at bootstrapping, in the gobject-introspection
# needs glib2, but the glib2 gir modules are supplied from here and need
# gobject-introspection. so you may need to add -Dintrospection=disabled
# here, build glib2, build gobject-introspection against this, and then
# rebuild glib2 fully
#

#
# also the existence of dconf breaks the install of the gir files
#

#
# our libelf doesn't have large-file support in 32-bit mode
# need docutils to be in the default path to find rst2man
#
env TRIBBLIX_LDFLAGS="-lsocket" TRIBBLIX_CFLAGS="-Wno-error=format -Wno-error=format-nonliteral -D_POSIX_PTHREAD_SEMANTICS -D_REENTRANT" $THOME/build/mesonbuild +gnu -64 glib-2.82.5 -C "-Dxattr=false -Dman-pages=enabled -Ddtrace=false -Dsysprof=disabled -Dlibelf=disabled -Dtests=false" +C "-Dxattr=false -Dman-pages=enabled -Ddtrace=false -Dsysprof=disabled -Dtests=false"

$THOME/build/genpkg TRIBlib-glib2 glib-2.82.5
