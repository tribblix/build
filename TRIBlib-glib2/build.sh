#!/bin/sh
#

env TRIBBLIX_LDFLAGS="-lsocket" TRIBBLIX_CFLAGS="-Wno-error=format -Wno-error=format-nonliteral -D_POSIX_PTHREAD_SEMANTICS" PATH=/usr/gnu/bin:$PATH $THOME/build/mesonbuild -64 glib-2.62.6 -C "-Dxattr=false -Dman=true -Ddtrace=false"

$THOME/build/genpkg TRIBlib-glib2 glib-2.62.6
