#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# versions after 2.64.6 broke Xfce with /usr/libexec/at-spi-bus-launcher
# reporting "Failed to launch bus: Failed to connect to session bus"
# which is solved by adding -D_REENTRANT to CFLAGS
#

env TRIBBLIX_LDFLAGS="-lsocket" TRIBBLIX_CFLAGS="-Wno-error=format -Wno-error=format-nonliteral -D_POSIX_PTHREAD_SEMANTICS -D_REENTRANT" $THOME/build/mesonbuild +gnu -64 glib-2.76.6 -C "-Dxattr=false -Dman=true -Ddtrace=false"

$THOME/build/genpkg TRIBlib-glib2 glib-2.76.6
